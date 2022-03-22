# CNN-matlab

Deep Learning is subtype of Machine Learning and is more and more popular because it is highly accurate.
Matlab have DeepLearning Toolbox.



# Matlab CNN fast tutorial 

This tutorial is for real beginers.
Select Pretrained Network 
 ![image](https://user-images.githubusercontent.com/88327884/159548233-970cea96-5e20-4f7a-80ff-1be576aad76b.png)

For example VGG-16
InputSize must be the same as size of image in function  @customreader.
If you want another size of images you must delete input block, and add your own input blok. 
![image](https://user-images.githubusercontent.com/88327884/159548280-06358d19-7305-4c48-972b-1297913b87ca.png)

Next step is change last fullyConnectedLayer, you must change OutputSize, is must a numer of classes, this change make like imageInputLayer.
 ![image](https://user-images.githubusercontent.com/88327884/159548333-319b2fde-1d84-4c87-b671-735f51d5f1d8.png)

Last part is change classificationLayer, delete this block and add new.
 ![image](https://user-images.githubusercontent.com/88327884/159548353-9d512690-9609-49c7-9f16-17acacd07556.png)

Sametime you must change anoder fullyConnectedLayer if you change InputSize.

Export your Pretreined net and change your file path and start CNNexample.m.


Example of confusionchart
![image](https://user-images.githubusercontent.com/88327884/159548901-8aeae91d-e85f-49fa-b2aa-e15fb273a461.png)

