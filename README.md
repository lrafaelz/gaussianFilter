# Filtro Gaussiano para redes neurais convolucionais em hardware

### Requisitos:
- ModelSim 13.0 (para execução do projeto)
- Logisim (para visualização do modelo RTL)

### Atividades realizadas até então
- A partir de uma pesquisa bibliografica inicial, foi levantado um referencial teórico de 63 artigos
contendo alguns artigos gerais e também o trabalho de M. Monteiro et. al.(2022) que definiu o foco da pesquisa para uso de filtros gaussianos em dispositivos
embarcados cujo processamento desses filtros é em hardware;
- Entendido através do referencial teórico (e de outros trabalhos que o referencial
teórico mencionavam), como funcionam as redes neurais convolucionais e sua aplicação em hardware;
- Desenvolvida a solução multi-kernel com três níveis de suavização das imagens
de entrada em VHDL utilizando somadores simples e depois shifts lógicos para
simplificar o circuito. Continda nesse repositório;
- Para implementar a arquitetura multi-kernel otimizada em espaço e em eficiência
energética deverá ainda ser realizada a descrição em hardware de um modelo, o
qual tenha todos os kernels embarcados em um único hardware cujo pode
alternar entre os três kernels conforme a necessidade. Para isso ser
implementado optou-se por desenhar a arquitetura já existente em uma
ferramenta de RTL para facilitar o entendimento de como poderá ser a
abordagem para essa síntese dos três filtros;
- Obtido ao fim os caminhos futuros desta pesquisa, finalizar a arquitetura em
síntese dos três filtros e embarcar isto em ASIC para realizar testes comparando a
arquitetura em hardware com um software com o mesmo filtro gaussiano. É
esperado neste caso haver perdas no poder de filtragem, pois haverá uma
aproximação dos valores entre os filtros na arquitetura de hardware único dos
filtros, mas, em contrapartida se obterá eficiência energética e de área em um
hardware único configurável. Após isso poderá ser comparada velocidade de
processamento e também a diferença em eficiência energética entre o modelo
inicial já desenvolvido e o modelo embarcado dos três kernels.

### Referências obtidas:
1. V. Sze, Y. -H. Chen, T. -J. Yang and J. S. Emer, "Efficient Processing of Deep Neural
Networks: A Tutorial and Survey," in Proceedings of the IEEE, vol. 105, no. 12, pp.
2295-2329, Dec. 2017, doi: 10.1109/JPROC.2017.2761740.
2. H. A. Gonzalez, S. Muzaffar, J. Yoo and I. M. Elfadel, "BioCNN: A Hardware
Inference Engine for EEG-Based Emotion Detection," in IEEE Access, vol. 8, pp.
140896-140914, 2020, doi: 10.1109/ACCESS.2020.3012900.
3. W. -C. Fang, K. -Y. Wang, N. Fahier, Y. -L. Ho and Y. -D. Huang, "Development and
Validation of an EEG-Based Real-Time Emotion Recognition System Using Edge AI
Computing Platform With Convolutional Neural Network System-on-Chip
Design," in IEEE Journal on Emerging and Selected Topics in Circuits and Systems,
vol. 9, no. 4, pp. 645-657, Dec. 2019, doi: 10.1109/JETCAS.2019.2951232.
4. Mohit Khatwani, Hasib-Al Rashid, Hirenkumar Paneliya, Mark Horton, Nicholas
Waytowich, W. David Hairston, and Tinoosh Mohsenin. 2021. A Flexible
Multichannel EEG Artifact Identification Processor using Depthwise-Separable
Convolutional Neural Networks. J. Emerg. Technol. Comput. Syst. 17, 2, Article 23
(April 2021), 21 pages. https://doi.org/10.1145/3427471
5. M. Monteiro, I. Seidel, M. Grellert, J. L. Güntzel, L. Soares and C. Meinhardt,
"Exploring the Impacts of Multiple Kernel Sizes of Gaussian Filters Combined to
Approximate Computing in Canny Edge Detection," 2022 IEEE 13th Latin America
Symposium on Circuits and System (LASCAS), Puerto Varas, Chile, 2022, pp. 1-4,
doi: 10.1109/LASCAS53948.2022.9789080.
6. M. Monteiro et al., "Design of Energy-Efficient Gaussian Filters by Combining
Refactoring and Approximate Adders," 2021 IEEE International Symposium on
Circuits and Systems (ISCAS), Daegu, Korea, 2021, pp. 1-5, doi:
10.1109/ISCAS51556.2021.9401199.
7. H. Jia et al., "Scalable and Programmable Neural Network Inference Accelerator
Based on In-Memory Computing," in IEEE Journal of Solid-State Circuits, vol. 57,
no. 1, pp. 198-211, Jan. 2022, doi: 10.1109/JSSC.2021.3119018.
8. V. Leon, G. Makris, S. Xydis, K. Pekmestzi and D. Soudris, "MAx-DNN: Multi-Level
Arithmetic Approximation for Energy-Efficient DNN Hardware Accelerators," 2022
IEEE 13th Latin America Symposium on Circuits and System (LASCAS), Puerto
Varas, Chile, 2022, pp. 01-04, doi: 10.1109/LASCAS53948.2022.9789055.
9. Y. Wang, Y. Qin, L. Liu, S. Wei and S. Yin, "HPPU: An Energy-Efficient Sparse DNN
Training Processor with Hybrid Weight Pruning," 2021 IEEE 3rd International
Conference on Artificial Intelligence Circuits and Systems (AICAS), Washington
DC, DC, USA, 2021, pp. 1-4, doi: 10.1109/AICAS51828.2021.9458410.
10. S. Kurzum, G. Shomron, F. Gabbay and U. Weiser, "Enhancing DNN Training
Efficiency Via Dynamic Asymmetric Architecture," in IEEE Computer Architecture
Letters, vol. 22, no. 1, pp. 49-52, Jan.-June 2023, doi: 10.1109/LCA.2023.3275909.
11. S. Liang, K. Chen, B. Wu and W. Liu, "A Survey of Approximation based Hardware
Acceleration Techniques for Deep Neural Networks (Invited)," 2022 IEEE 16th
International Conference on Solid-State & Integrated Circuit Technology (ICSICT),
Nangjing, China, 2022, pp. 1-4, doi: 10.1109/ICSICT55466.2022.9963257.
12. J. Jing, S. Liu, G. Wang, W. Zhang, C. Sun, “Recent advances on image edge
detection: A comprehensive review”, in Neurocomputing, vol. 503 pp. 259-271,
2022. https://doi.org/10.1016/j.neucom.2022.06.083
13. LeCun, Y., Bengio, Y. & Hinton, G. Deep learning. Nature 521, 436–444 (2015).
https://doi.org/10.1038/nature14539
14. Krizhevsky, A., Sutskever, I., & Hinton, G. E. (2017). ImageNet classification with
deep convolutional neural networks. Communications of the ACM, 60(6), 84-90.
