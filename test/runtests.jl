using Test
using Pkg
using Pkg.Functions

@testset "Pkg.jl Tests" begin

    @testset "some_function tests" begin
        @test Pkg.some_function(2) == 4
        @test Pkg.some_function(-1) == -2
        @test Pkg.some_function(0) == 0
    end

    @testset "another_function tests" begin
        @test Pkg.another_function(3) == 13
        @test Pkg.another_function(-2) == 8
        @test Pkg.another_function(0) == 10
    end

    @testset "additional_function tests" from Functions begin
        @test additional_function(2) == 4
        @test additional_function(-3) == 9
        @test additional_function(0) == 0
    end

    @testset "combined_function tests" from Functions begin
        @test combined_function(1, 2, 3) == (Pkg.some_function(1) + Pkg.another_function(2) + additional_function(3))
        @test combined_function(0, 0, 0) == (Pkg.some_function(0) + Pkg.another_function(0) + additional_function(0))
        @test combined_function(-1, -1, -1) == (Pkg.some_function(-1) + Pkg.another_function(-1) + additional_function(-1))
    end

end
