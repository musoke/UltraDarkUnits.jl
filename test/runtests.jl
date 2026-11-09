using UltraDarkUnits
using Unitful
using UnitfulAstro
using Test

@testset "https://arxiv.org/abs/2410.02663" begin
    m0 = UltraDarkUnits.m0
    eV_mass = UltraDarkUnits.eV_mass

    @test L_code ≈ 121 * (1e-23eV_mass / m0)^0.5 * u"kpc" rtol=0.01

    @test T_code ≈ 75.5u"Gyr" rtol=0.03

    @test M_code ≈ 7e7 * (1e-23eV_mass / m0)^1.5 * u"Msun" rtol=0.02
end
