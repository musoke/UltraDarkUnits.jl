module UltraDarkUnits

import Unitful
import Unitful: @u_str
import Unitful: uconvert

import Unitful: G, ħ
import UnitfulAstro

eV_mass = Unitful.eV / Unitful.c^2

# Reference particle mass
m0 = 1e-22 * Unitful.eV / Unitful.c^2

# Matter density
Ωm0 = 0.3

# Hubble rate
H0 = 70u"km / s / Mpc"

export L_code, M_code, T_code

T_code = (3 / 8 / π * H0^2 * Ωm0)^(-1 / 2)
T_code = uconvert(u"Gyr", T_code)

L_code = (ħ / m0)^(1 / 2) * (3 / 8 / π * H0^2 * Ωm0)^(-1 / 4)
L_code = uconvert(u"kpc", L_code)

M_code = (ħ / m0)^(3 / 2) * (3 / 8 / π * H0^2 * Ωm0)^(+1 / 4) / G
M_code = uconvert(u"Msun", M_code)

end
