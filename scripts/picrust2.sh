#! /bin/bash

#SBATCH --time=04-00:00:00
#SBATCH --partition=defq
#SBATCH --mem=192GB
#SBATCH --mail-user=agmarshall@houstonmethodist.org
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --ntasks-per-node=64
#SBATCH --nodes=1
#SBATCH --job-name=picrust2
#SBATCH --comment=picrust2

module load mamba
mamba activate picrust2

picrust2_pipeline.py -s /home/tmhagm8/scratch/abx_depl/abx_depl_dada2_gg2/adult_abx_tbi/data/picrust2.53/rep-seqs.fasta -i /home/tmhagm8/scratch/abx_depl/abx_depl_dada2_gg2/adult_abx_tbi/data/picrust2.53/abx_depl_abunds.tsv -o /home/tmhagm8/scratch/abx_depl/abx_depl_dada2_gg2/adult_abx_tbi/data/picrust2.53/out_v2 --processes 10