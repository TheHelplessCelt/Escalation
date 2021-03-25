--New camera tweak values

--Speed the camera pans when using arrow keys or moving mouse to the edge of the screen
PanSpeed = 100
--How long it takes the camera to get to PanSpeed when it starts panning
PanAccelerationTime = 0.01
--Controls how sensitive the camera is to using the middle mouse button to pan
GrabPanSpeed = 50

--Controls how sensitive the mouse is when zooming using alt + right mouse button
MouseZoomSpeed = 50
--Controls how sensitive the scroll wheel on the mouse is for zooming
ScrollZoomSpeed = 15
--Controls the maximum speed the camera will move at when using the scroll wheel to zoom
MaximumZoomSpeed = 300
--Controls how long the camera takes to get to MaximumZoomSpeed when it starts zooming in response to the scroll wheel
ZoomAccelerationTime = 0.01

--Default camera vertical angle, measured in degrees from vertical.  0 is straight down, 90 is horizontal
DefaultDeclination = 45
--Minimum camera vertical angle, measured in degrees from vertical.  0 is straight down, 90 is horizontal
MinimumDeclination = 1
--Maximum camera vertical angle, measured in degrees from vertical.  0 is straight down, 90 is horizontal
MaximumDeclination = 90

--Default camera horizontal angle, measured in degrees
DefaultOrbit = 225

--Default distance from target for the camera
DefaultDistance = 90
--Minimum distance from the target for the camera
MinimumDistance = 1.1
--Maximum distance from the target for the camera
MaximumDistance = 110

--Controls how quickly the camera transitions when double clicking on the map and reseting the camera to default
PositionTransitionSpeed = 400


--Exponent used for distance, higher values will increase the amount of "slowdown" the camera experiences when zooming in
DistanceExponent = 1.6
--Overall multiplier used for distance, acts as an overall tweak for camera zoom sensitivity
DistanceMultiplier = 0.04

--Field of view of the camera, in degrees when viewed on a 4:3 monitor.  Widescreens will procedurally be adjusted to be wider.
FieldOfView = 40
--Distance to the near clip plane of the camera
NearClipDistance = 1
--Distance to the far clip plane of the camera
FarClipDistance = 5600

--How far the actual camera target can vary from the desired camera target
CameraTargetWanderDistance = 3

--The camera will never go below this height above the terrain
MinimumHeightAboveTerrain = 1.1

TargetOffsetRatio = 0.0
