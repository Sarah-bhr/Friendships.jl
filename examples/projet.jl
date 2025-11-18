# Créer population
people = Population(10)
println("Population créée !")

# Lancer la simulation
poids = simulate(people, steps=100)
println("Simulation terminée !")

# Afficher quelques intensités finales
println("Intensités finales :")
for ((i,j), (intensite, _)) in first(poids, 5)
    println("Liaison $i-$j : intensité=$(round(intensite, digits=3))")
end