# PNG to TileMap - Godot Script


Godot Script that turns pixel sized images into tilemaps, inspired by this [Tutorial](https://youtu.be/B_Xp9pt8nRY) from Brackeys.

This Script uses the Tilemap Node functionalities, so it gets the PNG data and run each pixel and inserts the tile index according to the color asigned.

***

## How to Use It:


1. Draw your level on your favorite image editor
   
![Step1](/assets/images/step1.gif)

2. Drag and drop your map on the `Map` Texture field

![Step2](assets/images/step2.gif)

3. On the `Colors` field you can increase the array value and set the color code according to your map.

![Step3](assets/images/step3.gif)

4. The script will link the tilemap index with the colors index

## Result


![Final Result](assets/images/final_result.png)

![RawBiggerMap](assets/images/ship9_raw.png)

![GenBiggerMap](assets/images/ship9_gen.png)
