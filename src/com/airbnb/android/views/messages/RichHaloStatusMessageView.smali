.class public Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;
.super Landroid/widget/FrameLayout;
.source "RichHaloStatusMessageView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/RichMessageView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/messages/RichHaloStatusMessageView$1;
    }
.end annotation


# instance fields
.field private mMessage:Lcom/airbnb/android/models/messages/RichStatusMessage;

.field mStatusIcon:Lcom/airbnb/android/views/HaloImageView;

.field private mStatusOffDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private mStatusOnDrawable:Landroid/graphics/drawable/LayerDrawable;

.field mStatusText:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/messages/RichStatusMessage;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Lcom/airbnb/android/models/messages/RichStatusMessage;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mMessage:Lcom/airbnb/android/models/messages/RichStatusMessage;

    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301ae

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 45
    return-void
.end method

.method private makeLocalCompanionOffDrawable()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOffDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_54

    .line 99
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f02018c

    invoke-static {v0, v3}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 101
    .local v11, "starryBackground":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 102
    .local v7, "circleSize":I
    invoke-static {v11, v7}, Lcom/airbnb/android/utils/ImageUtils;->createCircularBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 103
    .local v8, "circleStarryBackground":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v6, v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 105
    .local v6, "background":Landroid/graphics/drawable/BitmapDrawable;
    const v0, 0x7f02018b

    const v3, 0x7f0a000c

    invoke-static {v0, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 107
    .local v10, "lcIcon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    new-array v9, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aput-object v6, v9, v0

    aput-object v10, v9, v1

    .line 108
    .local v9, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOffDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 110
    .local v2, "inset":I
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOffDrawable:Landroid/graphics/drawable/LayerDrawable;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 112
    .end local v2    # "inset":I
    .end local v6    # "background":Landroid/graphics/drawable/BitmapDrawable;
    .end local v7    # "circleSize":I
    .end local v8    # "circleStarryBackground":Landroid/graphics/Bitmap;
    .end local v9    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v10    # "lcIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "starryBackground":Landroid/graphics/Bitmap;
    :cond_54
    return-void
.end method

.method private makeLocalCompanionOnDrawable()V
    .registers 12

    .prologue
    const/4 v1, 0x1

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOnDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_62

    .line 81
    new-instance v7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 82
    .local v7, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a000c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 83
    invoke-virtual {v7, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 84
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 85
    .local v10, "size":I
    invoke-virtual {v7, v10, v10}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    .line 87
    const v0, 0x7f020230

    const v3, 0x7f0a00a4

    invoke-static {v0, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 89
    .local v9, "lcIcon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x2

    new-array v8, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aput-object v7, v8, v0

    aput-object v9, v8, v1

    .line 90
    .local v8, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOnDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    .local v2, "inset":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b007a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 93
    .local v6, "adjustment":I
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOnDrawable:Landroid/graphics/drawable/LayerDrawable;

    sub-int v3, v2, v6

    add-int v5, v2, v6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 95
    .end local v2    # "inset":I
    .end local v6    # "adjustment":I
    .end local v7    # "background":Landroid/graphics/drawable/GradientDrawable;
    .end local v8    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "lcIcon":Landroid/graphics/drawable/Drawable;
    .end local v10    # "size":I
    :cond_62
    return-void
.end method


# virtual methods
.method public getMessage()Lcom/airbnb/android/interfaces/RichMessage;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mMessage:Lcom/airbnb/android/models/messages/RichStatusMessage;

    return-object v0
.end method

.method public populate(Lcom/airbnb/android/interfaces/RichMessage;)V
    .registers 7
    .param p1, "message"    # Lcom/airbnb/android/interfaces/RichMessage;

    .prologue
    .line 49
    move-object v0, p1

    check-cast v0, Lcom/airbnb/android/models/messages/RichStatusMessage;

    .line 51
    .local v0, "statusMessage":Lcom/airbnb/android/models/messages/RichStatusMessage;
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusText:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v0}, Lcom/airbnb/android/models/messages/RichStatusMessage;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    check-cast p1, Lcom/airbnb/android/models/messages/RichStatusMessage;

    .end local p1    # "message":Lcom/airbnb/android/interfaces/RichMessage;
    invoke-virtual {p1}, Lcom/airbnb/android/models/messages/RichStatusMessage;->getStatusMessageType()Lcom/airbnb/android/models/messages/RichStatusMessage$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/messages/RichStatusMessage$Type;->ordinal()I

    move-result v1

    .line 54
    .local v1, "type":I
    sget-object v2, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView$1;->$SwitchMap$com$airbnb$android$models$messages$RichStatusMessage$Type:[I

    invoke-static {}, Lcom/airbnb/android/models/messages/RichStatusMessage$Type;->values()[Lcom/airbnb/android/models/messages/RichStatusMessage$Type;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/airbnb/android/models/messages/RichStatusMessage$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_5e

    .line 64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid StatusMessage type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/airbnb/android/models/messages/RichStatusMessage$Type;->values()[Lcom/airbnb/android/models/messages/RichStatusMessage$Type;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :pswitch_47
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->makeLocalCompanionOnDrawable()V

    .line 57
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusIcon:Lcom/airbnb/android/views/HaloImageView;

    iget-object v3, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOnDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :goto_51
    return-void

    .line 60
    :pswitch_52
    invoke-direct {p0}, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->makeLocalCompanionOffDrawable()V

    .line 61
    iget-object v2, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusIcon:Lcom/airbnb/android/views/HaloImageView;

    iget-object v3, p0, Lcom/airbnb/android/views/messages/RichHaloStatusMessageView;->mStatusOffDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/HaloImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_51

    .line 54
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_47
        :pswitch_52
    .end packed-switch
.end method

.method public showAuthor(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 71
    return-void
.end method
