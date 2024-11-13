import parmed as pmd

# Load the first PDB file and its corresponding PSF
pdb1 = pmd.load_file('./new_membrane/pope/dna_pope_cleaned.pdb')

# Load the second PDB file (without PSF)
pdb2 = pmd.load_file('./Stuff/testing/translated_gfl_near.pdb')
#pdb2 = pmd.load_file('./new_membrane/pope/membrane5.pdb')
# Combine the structures by adding the second PDB to the f#rst
combined_pdb = pdb1 + pdb2

# Save the combined PDB and PSF files
combined_pdb.save('dna_pope_near.pdb')
