import cv2
input_image = cv2.imread("img/down-arrow.png")
cv2.imshow('image', input_image)
output_image = cv2.bitwise_not(input_image)
cv2.imshow('image', output_image)
cv2.imwrite('img/down-arrow-white.png', output_image)
cv2.waitKey(0)
cv2.destroyAllWindows()
