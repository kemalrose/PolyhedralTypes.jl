using PolyhedralTypes
using Test

@testset "PolyhedralTypes.jl" begin
	A1 = [0 2 4 2; 2 2 4 6]
	A2 = [1 2 5 3; 2 2 5 6]
	Delta = get_delta(A1, A2)
	psi = get_polyhedral_type(A1,A2)
    @test psi == (20, 19, 0, 4, 3, 0, 526, 10, 6, 0, 6, 0)
end
