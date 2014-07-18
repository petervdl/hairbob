.class public Lcom/airbnb/android/views/CountdownHaloImageView;
.super Lcom/airbnb/android/views/HaloImageView;
.source "CountdownHaloImageView.java"


# static fields
.field private static final DEGREES_CIRCLE:I = 0x168

.field private static final DEGREES_TOP:I = -0x5a

.field private static final sOvalRect:Landroid/graphics/RectF;


# instance fields
.field private mBackgroundColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderThickness:F

.field private mCountdownColor:I

.field private mCountdownDegrees:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/airbnb/android/views/CountdownHaloImageView;->sOvalRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/HaloImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderThickness:F

    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->setupViews()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/HaloImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderThickness:F

    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->setupViews()V

    .line 37
    return-void
.end method

.method private drawArc(FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .registers 15
    .param p1, "border"    # F
    .param p2, "radius"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v1, 0x3f000000

    .line 64
    iget v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v8, v0, v1

    .line 66
    .local v8, "horizontalRadius":F
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v9, v0, v1

    .line 67
    .local v9, "verticalRadius":F
    sget-object v0, Lcom/airbnb/android/views/CountdownHaloImageView;->sOvalRect:Landroid/graphics/RectF;

    sub-float v1, v8, p2

    sub-float v2, v9, p2

    add-float v3, v8, p2

    add-float v5, v9, p2

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 68
    sget-object v1, Lcom/airbnb/android/views/CountdownHaloImageView;->sOvalRect:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000

    iget v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownDegrees:I

    int-to-float v3, v0

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownDegrees:I

    add-int/lit8 v6, v0, -0x5a

    .line 70
    .local v6, "backgroundStart":I
    iget v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownDegrees:I

    rsub-int v7, v0, 0x168

    .line 71
    .local v7, "backgroundSwing":I
    iget v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBackgroundColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    sget-object v1, Lcom/airbnb/android/views/CountdownHaloImageView;->sOvalRect:Landroid/graphics/RectF;

    int-to-float v2, v6

    int-to-float v3, v7

    move-object v0, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 73
    return-void
.end method

.method private setupViews()V
    .registers 2

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CountdownHaloImageView;->setFadeEnabled(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f000000

    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_9

    .line 61
    :goto_8
    return-void

    .line 51
    :cond_9
    invoke-super {p0, p1}, Lcom/airbnb/android/views/HaloImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->getWidth()I

    move-result v3

    .line 54
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->getHeight()I

    move-result v1

    .line 57
    .local v1, "h":I
    iget v4, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderThickness:F

    mul-float v0, v6, v4

    .line 58
    .local v0, "border":F
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderThickness:F

    mul-float/2addr v5, v6

    sub-float v2, v4, v5

    .line 60
    .local v2, "radius":F
    iget-object v4, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v2, v4, p1}, Lcom/airbnb/android/views/CountdownHaloImageView;->drawArc(FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_8
.end method

.method public setBorderColors(III)V
    .registers 7
    .param p1, "countdownColorId"    # I
    .param p2, "backgroundColorId"    # I
    .param p3, "thicknessId"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownColor:I

    .line 78
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBackgroundColor:I

    .line 79
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderThickness:F

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mBorderThickness:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 84
    return-void
.end method

.method public setCountdown(I)V
    .registers 3
    .param p1, "degrees"    # I

    .prologue
    .line 93
    rem-int/lit16 v0, p1, 0x168

    iput v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownDegrees:I

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->invalidate()V

    .line 95
    return-void
.end method

.method public setCountdownProportion(F)V
    .registers 3
    .param p1, "proportion"    # F

    .prologue
    .line 104
    const/high16 v0, 0x43b40000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CountdownHaloImageView;->setCountdown(I)V

    .line 105
    return-void
.end method

.method public setForReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 13
    .param p1, "res"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/ReservationStatus;->getColorId()I

    move-result v5

    const v6, 0x7f0a001b

    const v7, 0x7f0b0059

    invoke-virtual {p0, v5, v6, v7}, Lcom/airbnb/android/views/CountdownHaloImageView;->setBorderColors(III)V

    .line 114
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/airbnb/android/views/CountdownHaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v5

    sget-object v6, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    if-ne v5, v6, :cond_4a

    .line 117
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getPendingExpiresAt()Ljava/util/Date;

    move-result-object v2

    .line 118
    .local v2, "expires":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 119
    .local v0, "delta":J
    invoke-virtual {p1}, Lcom/airbnb/android/models/Reservation;->getPendingBeganAt()Ljava/util/Date;

    move-result-object v3

    .line 120
    .local v3, "pendingBeganAt":Ljava/util/Date;
    const/high16 v5, 0x3f800000

    long-to-float v6, v0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-float v7, v7

    div-float/2addr v6, v7

    sub-float v4, v5, v6

    .line 121
    .local v4, "proportion":F
    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/CountdownHaloImageView;->setCountdownProportion(F)V

    .line 125
    .end local v0    # "delta":J
    .end local v2    # "expires":Ljava/util/Date;
    .end local v3    # "pendingBeganAt":Ljava/util/Date;
    .end local v4    # "proportion":F
    :goto_49
    return-void

    .line 123
    :cond_4a
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->setFull()V

    goto :goto_49
.end method

.method public setFull()V
    .registers 2

    .prologue
    .line 108
    const/16 v0, 0x168

    iput v0, p0, Lcom/airbnb/android/views/CountdownHaloImageView;->mCountdownDegrees:I

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/android/views/CountdownHaloImageView;->invalidate()V

    .line 110
    return-void
.end method
