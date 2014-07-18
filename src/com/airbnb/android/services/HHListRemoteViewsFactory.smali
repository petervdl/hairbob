.class Lcom/airbnb/android/services/HHListRemoteViewsFactory;
.super Ljava/lang/Object;
.source "HHListWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# static fields
.field public static final HH_BLUR_EDGE_SIZE:I = 0xa

.field public static final HH_HERO_IMAGE_BLUR:F = 11.0f


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mReservations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;

    .line 55
    iput-object p1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/HHListRemoteViewsFactory;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/services/HHListRemoteViewsFactory;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/HHListRemoteViewsFactory;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    return-object p1
.end method

.method private getBlurredImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_blurred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 222
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 224
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 225
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 226
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 228
    .local v4, "rect":Landroid/graphics/Rect;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 230
    const v5, -0xbdbdbe

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 233
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 234
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 235
    return-object v2
.end method

.method private getCroppedImageUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_cropped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupUpcomingRow(I)Landroid/widget/RemoteViews;
    .registers 25
    .param p1, "position"    # I

    .prologue
    .line 144
    new-instance v11, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const v18, 0x7f0301e4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v11, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v11, "item":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/airbnb/android/models/Reservation;

    .line 147
    .local v15, "reservation":Lcom/airbnb/android/models/Reservation;
    if-nez p1, :cond_200

    .line 148
    const v17, 0x7f080063

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    const v17, 0x7f080372

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 150
    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v12

    .line 151
    .local v12, "listingImage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->getBlurredImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/android/utils/BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 152
    .local v8, "image":Landroid/graphics/Bitmap;
    if-nez v8, :cond_a2

    .line 153
    sget-object v17, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/volley/toolbox/ImageLoader;->getImageBlocking(Ljava/lang/String;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 154
    if-eqz v8, :cond_a2

    .line 155
    new-instance v4, Lcom/airbnb/android/utils/BlurredBitmap;

    invoke-direct {v4, v12, v8}, Lcom/airbnb/android/utils/BlurredBitmap;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 156
    .local v4, "blur":Lcom/airbnb/android/utils/BlurredBitmap;
    invoke-virtual {v4}, Lcom/airbnb/android/utils/BlurredBitmap;->canBlur()Z

    move-result v17

    if-eqz v17, :cond_a2

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/high16 v18, 0x41300000

    const/16 v19, 0xa

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2}, Lcom/airbnb/android/utils/BlurredBitmap;->blurBlocking(Landroid/content/Context;FI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->getBlurredImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lcom/airbnb/android/utils/BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 163
    .end local v4    # "blur":Lcom/airbnb/android/utils/BlurredBitmap;
    :cond_a2
    const v17, 0x7f0801c8

    move/from16 v0, v17

    invoke-virtual {v11, v0, v8}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 171
    .end local v8    # "image":Landroid/graphics/Bitmap;
    .end local v12    # "listingImage":Ljava/lang/String;
    :goto_aa
    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, "imageUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->getCroppedImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/airbnb/android/utils/BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 173
    .local v14, "profileImage":Landroid/graphics/Bitmap;
    if-nez v14, :cond_235

    .line 174
    sget-object v17, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/volley/toolbox/ImageLoader;->getImageBlocking(Ljava/lang/String;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 175
    if-eqz v14, :cond_fb

    .line 176
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->getCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 177
    .local v6, "cropped":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->getCroppedImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/airbnb/android/utils/BitmapLruCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 178
    const v17, 0x7f080064

    move/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 184
    .end local v6    # "cropped":Landroid/graphics/Bitmap;
    :cond_fb
    :goto_fb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Lcom/airbnb/android/utils/DateHelper;->getDateMillis(J)J

    move-result-wide v17

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_23f

    const/4 v10, 0x1

    .line 186
    .local v10, "isCheckingIn":Z
    :goto_110
    const v18, 0x7f080372

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    if-eqz v10, :cond_242

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v17

    :goto_11f
    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v10}, Lcom/airbnb/android/utils/DateHelper;->getArrivalTimeWithName(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v18

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Lcom/airbnb/android/adapters/HHBaseAdapter;->getDateFormattedString(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 190
    .local v16, "reservationDates":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d002d

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getGuestCount()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 192
    .local v13, "numGuests":Ljava/lang/String;
    const v17, 0x7f080370

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0e00a7

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    .line 195
    .local v3, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v17

    if-eqz v17, :cond_248

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_248

    .line 196
    const v17, 0x7f080373

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 197
    const v17, 0x7f080373

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    :goto_1dc
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 203
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v17, "res_id"

    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 204
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v7, "fillInIntent":Landroid/content/Intent;
    invoke-virtual {v7, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 206
    const v17, 0x7f08051f

    move/from16 v0, v17

    invoke-virtual {v11, v0, v7}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 208
    return-object v11

    .line 166
    .end local v3    # "api":Lcom/airbnb/android/AirbnbApi;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v7    # "fillInIntent":Landroid/content/Intent;
    .end local v9    # "imageUrl":Ljava/lang/String;
    .end local v10    # "isCheckingIn":Z
    .end local v13    # "numGuests":Ljava/lang/String;
    .end local v14    # "profileImage":Landroid/graphics/Bitmap;
    .end local v16    # "reservationDates":Ljava/lang/String;
    :cond_200
    const v17, 0x7f080372

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a0018

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 167
    const v17, 0x7f080063

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    const v17, 0x7f0801c8

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_aa

    .line 181
    .restart local v9    # "imageUrl":Ljava/lang/String;
    .restart local v14    # "profileImage":Landroid/graphics/Bitmap;
    :cond_235
    const v17, 0x7f080064

    move/from16 v0, v17

    invoke-virtual {v11, v0, v14}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_fb

    .line 184
    :cond_23f
    const/4 v10, 0x0

    goto/16 :goto_110

    .line 186
    .restart local v10    # "isCheckingIn":Z
    :cond_242
    invoke-virtual {v15}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v17

    goto/16 :goto_11f

    .line 199
    .restart local v3    # "api":Lcom/airbnb/android/AirbnbApi;
    .restart local v13    # "numGuests":Ljava/lang/String;
    .restart local v16    # "reservationDates":Ljava/lang/String;
    :cond_248
    const v17, 0x7f080373

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1dc
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    .prologue
    .line 71
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0301e5

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 72
    .local v0, "views":Landroid/widget/RemoteViews;
    const v1, 0x7f080520

    iget-object v2, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mContext:Landroid/content/Context;

    const v3, 0x7f0e03fe

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_d

    .line 79
    invoke-direct {p0, p1}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->setupUpcomingRow(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 82
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public onDataSetChanged()V
    .registers 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 103
    new-instance v0, Lcom/airbnb/android/requests/HostHomeRequest;

    new-instance v1, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory$1;-><init>(Lcom/airbnb/android/services/HHListRemoteViewsFactory;)V

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/HostHomeRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    .line 124
    .local v0, "request":Lcom/airbnb/android/requests/HostHomeRequest;
    iget-object v1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mReservations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 125
    iget-object v2, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 126
    :try_start_1a
    invoke-virtual {v0}, Lcom/airbnb/android/requests/HostHomeRequest;->execute()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_2b

    .line 129
    :try_start_1d
    iget-object v1, p0, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_22} :catch_2e
    .catchall {:try_start_1d .. :try_end_22} :catchall_2b

    .line 132
    :goto_22
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_2b

    .line 135
    :cond_23
    invoke-virtual {p0}, Lcom/airbnb/android/services/HHListRemoteViewsFactory;->getCount()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->trackWidgetUpdate(I)V

    .line 136
    return-void

    .line 132
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1

    .line 130
    :catch_2e
    move-exception v1

    goto :goto_22
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method
