# Créer population
people = Population(10)
println(people)

# Création des relations initiales
relationships(people)

println("\nPopulation après création des relations :")
println(people)

# Lancer la simulation
poids = simulate(people, steps=100)
println("\nSimulation terminée !")

# Afficher quelques intensités finales
println("\nIntensités finales :")
for ((i,j), (intensite, _)) in first(poids, 5)
    println("Liaison $i-$j : intensité=$(round(intensite, digits=3))")
end
