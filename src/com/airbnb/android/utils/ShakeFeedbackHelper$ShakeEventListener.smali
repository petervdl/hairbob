.class Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;
.super Ljava/lang/Object;
.source "ShakeFeedbackHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/ShakeFeedbackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShakeEventListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;
    }
.end annotation


# static fields
.field private static final FIVE_SECONDS:I = 0x1388

.field private static final MIN_DIRECTION_CHANGES:I = 0x3

.field private static final MIN_FORCE_TO_DETECT:I = 0xa

.field private static final TIME_BETWEEN_DIRECTION_CHANGE_MAX:I = 0xc8

.field private static final TOTAL_SHAKE_TIME_MAX:I = 0x7d0

.field private static final TOTAL_SHAKE_TIME_MIN:I = 0x12c


# instance fields
.field private directionChangeCount:I

.field private firstDirectionChangeTime:J

.field private lastDirectionChangeTime:J

.field private lastShakeTime:J

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private shakeListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->firstDirectionChangeTime:J

    .line 401
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->directionChangeCount:I

    .line 404
    iput v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastX:F

    .line 405
    iput v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastY:F

    .line 406
    iput v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastZ:F

    .line 415
    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;-><init>()V

    return-void
.end method

.method private reset()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 474
    iput-wide v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->firstDirectionChangeTime:J

    .line 475
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->directionChangeCount:I

    .line 476
    iput-wide v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastDirectionChangeTime:J

    .line 477
    iput v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastX:F

    .line 478
    iput v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastY:F

    .line 479
    iput v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastZ:F

    .line 480
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 484
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 19
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 426
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 427
    .local v10, "x":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 428
    .local v11, "y":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 431
    .local v12, "z":F
    add-float v13, v10, v11

    add-float/2addr v13, v12

    move-object/from16 v0, p0

    iget v14, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastX:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastZ:F

    sub-float/2addr v13, v14

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 433
    .local v1, "movement":F
    const/high16 v13, 0x41200000

    cmpl-float v13, v1, v13

    if-lez v13, :cond_a0

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 437
    .local v2, "now":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->firstDirectionChangeTime:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_47

    .line 438
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->firstDirectionChangeTime:J

    .line 439
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastDirectionChangeTime:J

    .line 443
    :cond_47
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastDirectionChangeTime:J

    sub-long v4, v2, v13

    .line 444
    .local v4, "timeSinceLastMovement":J
    const-wide/16 v13, 0xc8

    cmp-long v13, v4, v13

    if-gez v13, :cond_a1

    .line 445
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastDirectionChangeTime:J

    .line 446
    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->directionChangeCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->directionChangeCount:I

    .line 449
    move-object/from16 v0, p0

    iput v10, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastX:F

    .line 450
    move-object/from16 v0, p0

    iput v11, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastY:F

    .line 451
    move-object/from16 v0, p0

    iput v12, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastZ:F

    .line 454
    move-object/from16 v0, p0

    iget v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->directionChangeCount:I

    const/4 v14, 0x3

    if-lt v13, v14, :cond_a0

    .line 456
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->firstDirectionChangeTime:J

    sub-long v8, v2, v13

    .line 457
    .local v8, "totalDuration":J
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastShakeTime:J

    sub-long v6, v2, v13

    .line 458
    .local v6, "timeSinceLastShake":J
    const-wide/16 v13, 0x12c

    cmp-long v13, v8, v13

    if-lez v13, :cond_a0

    const-wide/16 v13, 0x7d0

    cmp-long v13, v8, v13

    if-gez v13, :cond_a0

    const-wide/16 v13, 0x1388

    cmp-long v13, v6, v13

    if-lez v13, :cond_a0

    .line 459
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->lastShakeTime:J

    .line 460
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->shakeListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;

    invoke-interface {v13}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;->onShake()V

    .line 461
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->reset()V

    .line 468
    .end local v2    # "now":J
    .end local v4    # "timeSinceLastMovement":J
    .end local v6    # "timeSinceLastShake":J
    .end local v8    # "totalDuration":J
    :cond_a0
    :goto_a0
    return-void

    .line 465
    .restart local v2    # "now":J
    .restart local v4    # "timeSinceLastMovement":J
    :cond_a1
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->reset()V

    goto :goto_a0
.end method

.method public setOnShakeListener(Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;

    .prologue
    .line 420
    iput-object p1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->shakeListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;

    .line 421
    return-void
.end method
