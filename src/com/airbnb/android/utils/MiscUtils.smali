.class public Lcom/airbnb/android/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field private static final CAMPAIGN_VALID_PERIOD:J = 0x9a7ec800L

.field public static final COLORED_SUBSTRING_TOKEN:Ljava/lang/String; = "#%SUBSTRING%#"

.field private static final INVALID_DATE:J = -0x1L

.field private static final LOAD_STATIC_MAP_DELAY:I = 0x258

.field private static mIsWideMode:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/airbnb/android/utils/MiscUtils;->mIsWideMode:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apiRemoveGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3
    .param p0, "vto"    # Landroid/view/ViewTreeObserver;
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 134
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 138
    :goto_9
    return-void

    .line 136
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_9
.end method

.method public static apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "draw"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 124
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :goto_9
    return-void

    .line 126
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 456
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 457
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 458
    .local v0, "line":Ljava/lang/String;
    :goto_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 459
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 461
    :cond_21
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 462
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 577
    const v1, 0x7f0e0135

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 578
    const-string/jumbo v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 579
    .local v0, "clipboard":Landroid/content/ClipboardManager;
    new-instance v1, Landroid/content/ClipData;

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-direct {v4, p1}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 580
    return-void
.end method

.method public static createErrorDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageId"    # I

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/MiscUtils;->createErrorDialog(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorDialog(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0563

    new-instance v2, Lcom/airbnb/android/utils/MiscUtils$1;

    invoke-direct {v2}, Lcom/airbnb/android/utils/MiscUtils$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static detectAffiliateParams(Landroid/net/Uri;)V
    .registers 4
    .param p0, "intentData"    # Landroid/net/Uri;

    .prologue
    .line 347
    const-string/jumbo v2, "af"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "affiliate":Ljava/lang/String;
    const-string/jumbo v2, "c"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "code":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public static detectAffiliateParams(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "affiliate"    # Ljava/lang/String;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 338
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 339
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "affiliate"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "affiliate_code"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "affiliate_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 344
    :cond_34
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 510
    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_c

    .line 511
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 519
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    .local v1, "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_b
    return-object v0

    .line 514
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_c
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 515
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 516
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 517
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_b
.end method

.method public static flashVerticalScrollBar(Landroid/widget/ListView;)V
    .registers 3
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v1, 0x0

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->scrollBy(II)V

    .line 440
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/widget/ListView;->scrollBy(II)V

    .line 441
    return-void
.end method

.method public static floatToString(F)Ljava/lang/String;
    .registers 5
    .param p0, "number"    # F

    .prologue
    .line 409
    const/high16 v0, 0x3f800000

    rem-float v0, p0, v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_14

    float-to-int v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 5
    .param p0, "html"    # Ljava/lang/String;

    .prologue
    .line 388
    if-nez p0, :cond_4

    .line 389
    const/4 v1, 0x0

    .line 397
    :goto_3
    return-object v1

    .line 392
    :cond_4
    :try_start_4
    const-string/jumbo v1, "\r\n"

    const-string/jumbo v2, "<br>"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, "<br>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_1b} :catch_1d

    move-result-object v1

    goto :goto_3

    .line 393
    :catch_1d
    move-exception v0

    .line 394
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_30

    .line 397
    new-instance v1, Landroid/text/Spannable$Factory;

    invoke-direct {v1}, Landroid/text/Spannable$Factory;-><init>()V

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    goto :goto_3

    .line 399
    :cond_30
    throw v0
.end method

.method public static getAffiliateCampaignData()Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    const/4 v5, 0x0

    .line 359
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 360
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "affiliate_date"

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 361
    .local v1, "campaignTimestamp":J
    cmp-long v6, v1, v7

    if-lez v6, :cond_43

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide v8, 0x9a7ec800L

    add-long/2addr v8, v1

    cmp-long v6, v6, v8

    if-gtz v6, :cond_44

    const/4 v3, 0x1

    .line 363
    .local v3, "campaignValid":Z
    :goto_25
    if-nez v3, :cond_46

    .line 365
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "affiliate_date"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "affiliate_code"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "affiliate"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 375
    .end local v3    # "campaignValid":Z
    :cond_43
    :goto_43
    return-object v5

    .line 362
    :cond_44
    const/4 v3, 0x0

    goto :goto_25

    .line 369
    .restart local v3    # "campaignValid":Z
    :cond_46
    const-string/jumbo v6, "affiliate"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "affiliateCampaign":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 371
    const-string/jumbo v6, "affiliate_code"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    goto :goto_43
.end method

.method public static getAffiliateParams()Lcom/airbnb/android/utils/Strap;
    .registers 5

    .prologue
    .line 379
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    .line 380
    .local v1, "params":Lcom/airbnb/android/utils/Strap;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAffiliateCampaignData()Landroid/util/Pair;

    move-result-object v0

    .line 381
    .local v0, "affiliateCampaign":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_20

    .line 382
    const-string/jumbo v3, "affiliate_campaign"

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "affiliate_id"

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 384
    :cond_20
    return-object v1
.end method

.method public static getAppStoreLink()Ljava/lang/String;
    .registers 3

    .prologue
    .line 562
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getInstallerPackageSafe()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "installerPackage":Ljava/lang/String;
    const-string/jumbo v1, "amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "com.amazon.venezia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 564
    :cond_18
    const-string/jumbo v1, "amzn://apps/android?p=com.airbnb.android"

    .line 572
    :goto_1b
    return-object v1

    .line 565
    :cond_1c
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->hasGooglePlayServices(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 566
    :cond_2f
    const-string/jumbo v1, "market://details?id=com.airbnb.android"

    goto :goto_1b

    .line 567
    :cond_33
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isCurrentIPInChina()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 569
    const-string/jumbo v1, "http://r.airbnb.com/l.c.hsjr"

    goto :goto_1b

    .line 572
    :cond_3d
    const-string/jumbo v1, "https://play.google.com/store/apps/details?id=com.airbnb.android"

    goto :goto_1b
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 528
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 531
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 532
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 533
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_12} :catch_13

    .line 540
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_12
    return-object v2

    .line 534
    :catch_13
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "android_eng"

    const/4 v4, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v6, "type"

    const-string/jumbo v7, "out_of_memory_bitmap_from_view"

    invoke-virtual {v5, v6, v7}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 536
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v3

    if-nez v3, :cond_12

    .line 537
    throw v1
.end method

.method public static getDateFromBundle(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 316
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 317
    .local v0, "dateAsLong":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_10

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getDateFromIntent(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 305
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 306
    .local v0, "dateAsLong":J
    cmp-long v2, v0, v2

    if-lez v2, :cond_10

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_f
    return-object v2

    :cond_10
    const/4 v2, 0x0

    goto :goto_f
.end method

.method public static getInstallerPackageSafe()Ljava/lang/String;
    .registers 3

    .prologue
    .line 557
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_17

    .end local v0    # "packageName":Ljava/lang/String;
    :goto_16
    return-object v0

    .restart local v0    # "packageName":Ljava/lang/String;
    :cond_17
    const-string/jumbo v0, ""

    goto :goto_16
.end method

.method public static getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 9
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 112
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 113
    .local v1, "loc":Landroid/graphics/Rect;
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 114
    .local v0, "coords":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 115
    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->getStatusbarHeight(Landroid/view/View;)I

    move-result v2

    .line 116
    .local v2, "statusHeight":I
    aget v3, v0, v5

    aget v4, v0, v7

    sub-int/2addr v4, v2

    aget v5, v0, v5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v6, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v2

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    return-object v1
.end method

.method public static getScreenSize()Landroid/graphics/Point;
    .registers 4

    .prologue
    .line 88
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 89
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static getStatusBarActionBarHeight(Landroid/app/Activity;)I
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 426
    const/4 v2, 0x0

    .line 427
    .local v2, "statusBarActionBarHeight":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 428
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 429
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 430
    .local v3, "statusBarHeight":I
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 431
    .local v0, "actionBarHeight":I
    add-int v2, v3, v0

    .line 432
    return v2
.end method

.method public static getStatusbarHeight(Landroid/view/View;)I
    .registers 5
    .param p0, "a"    # Landroid/view/View;

    .prologue
    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .local v0, "rectangle":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 95
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 96
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 97
    .local v1, "statusBarHeight":I
    return v1
.end method

.method public static getStringFromFile(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 467
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "ret":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 470
    return-object v1
.end method

.method public static getSubmitColorResourceId(Z)I
    .registers 2
    .param p0, "isEnabled"    # Z

    .prologue
    .line 149
    if-eqz p0, :cond_6

    .line 150
    const v0, 0x7f0a000f

    .line 152
    :goto_5
    return v0

    :cond_6
    const v0, 0x7f0a001b

    goto :goto_5
.end method

.method public static getTelephonyOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 545
    .local v0, "operatorName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 546
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Lcom/airbnb/android/AirbnbApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 547
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 549
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1f
    return-object v0
.end method

.method private static getWhitespace(I)Ljava/lang/String;
    .registers 4
    .param p0, "size"    # I

    .prologue
    .line 213
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, p0, :cond_11

    .line 215
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 217
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static hasGooglePlayServices(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    invoke-static {p0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->simulateNoPlayServicesEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isCurrentIPInChina()Z
    .registers 2

    .prologue
    .line 487
    const-string/jumbo v0, "CN"

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmailValid(Ljava/lang/CharSequence;)Z
    .registers 2
    .param p0, "email"    # Ljava/lang/CharSequence;

    .prologue
    .line 295
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isKeyboardUp(Landroid/app/Activity;Landroid/view/View;)Z
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->getStatusBarActionBarHeight(Landroid/app/Activity;)I

    move-result v1

    .line 106
    .local v1, "statusBarActionBarHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 107
    .local v0, "rootViewHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 108
    .local v2, "viewHeight":I
    if-lez v1, :cond_18

    sub-int v3, v0, v1

    if-le v3, v2, :cond_18

    const/4 v3, 0x1

    :goto_17
    return v3

    :cond_18
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public static isPrefetch()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 553
    const-string/jumbo v1, "prefetch"

    const-string/jumbo v2, "enabled"

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_16

    const-string/jumbo v1, "prefetch"

    invoke-static {v1}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static isTabletScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 444
    sget-object v0, Lcom/airbnb/android/utils/MiscUtils;->mIsWideMode:Ljava/lang/Boolean;

    if-nez v0, :cond_15

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/MiscUtils;->mIsWideMode:Ljava/lang/Boolean;

    .line 447
    :cond_15
    sget-object v0, Lcom/airbnb/android/utils/MiscUtils;->mIsWideMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static lightenText(Landroid/widget/TextView;)V
    .registers 3
    .param p0, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    return-void
.end method

.method public static linkifyHtml(Ljava/lang/String;I)Landroid/text/Spannable;
    .registers 19
    .param p0, "html"    # Ljava/lang/String;
    .param p1, "linkifyMask"    # I

    .prologue
    .line 186
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    .line 187
    .local v11, "withAnchorLinks":Landroid/text/Spanned;
    const/4 v14, 0x0

    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v15

    invoke-interface {v11, v14, v15}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, "withAnchorLinksBlankedOut":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v15

    const-class v16, Landroid/text/style/URLSpan;

    move-object/from16 v0, v16

    invoke-interface {v11, v14, v15, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/URLSpan;

    .line 190
    .local v3, "anchorSpans":[Landroid/text/style/URLSpan;
    move-object v4, v3

    .local v4, "arr$":[Landroid/text/style/URLSpan;
    array-length v9, v4

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_23
    if-ge v8, v9, :cond_56

    aget-object v2, v4, v8

    .line 191
    .local v2, "anchorSpan":Landroid/text/style/URLSpan;
    invoke-interface {v11, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 192
    .local v7, "end":I
    invoke-interface {v11, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 193
    .local v10, "start":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-int v15, v7, v10

    invoke-static {v15}, Lcom/airbnb/android/utils/MiscUtils;->getWhitespace(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 190
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 197
    .end local v2    # "anchorSpan":Landroid/text/style/URLSpan;
    .end local v7    # "end":I
    .end local v10    # "start":I
    :cond_56
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 198
    .local v13, "withAutoLinks":Landroid/text/SpannableString;
    move/from16 v0, p1

    invoke-static {v13, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 199
    const/4 v14, 0x0

    invoke-virtual {v13}, Landroid/text/SpannableString;->length()I

    move-result v15

    const-class v16, Landroid/text/style/URLSpan;

    invoke-virtual/range {v13 .. v16}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/URLSpan;

    .line 202
    .local v6, "autoSpans":[Landroid/text/style/URLSpan;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 203
    .local v1, "anchorAndAutoSpans":Landroid/text/SpannableString;
    move-object v4, v6

    array-length v9, v4

    const/4 v8, 0x0

    :goto_75
    if-ge v8, v9, :cond_88

    aget-object v5, v4, v8

    .line 204
    .local v5, "autoSpan":Landroid/text/style/URLSpan;
    invoke-virtual {v13, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    .line 205
    .restart local v7    # "end":I
    invoke-virtual {v13, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 206
    .restart local v10    # "start":I
    const/4 v14, 0x0

    invoke-virtual {v1, v5, v10, v7, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    goto :goto_75

    .line 209
    .end local v5    # "autoSpan":Landroid/text/style/URLSpan;
    .end local v7    # "end":I
    .end local v10    # "start":I
    :cond_88
    return-object v1
.end method

.method public static loadStaticMapIfNeeded(Lcom/airbnb/android/views/ClickableViewPager;Landroid/os/Handler;)V
    .registers 6
    .param p0, "viewPager"    # Lcom/airbnb/android/views/ClickableViewPager;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/airbnb/android/views/ClickableViewPager;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 590
    .local v1, "prevListingLoadMapRunnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_b

    .line 592
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 595
    :cond_b
    new-instance v0, Lcom/airbnb/android/utils/MiscUtils$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/MiscUtils$2;-><init>(Lcom/airbnb/android/views/ClickableViewPager;)V

    .line 602
    .local v0, "currListingLoadMapRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/ClickableViewPager;->setTag(Ljava/lang/Object;)V

    .line 603
    const-wide/16 v2, 0x258

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 604
    return-void
.end method

.method public static makeBold(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "boldSubString"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 266
    .local v1, "str":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 267
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 268
    .local v0, "start":I
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x11

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 270
    .end local v0    # "start":I
    :cond_20
    return-object v1
.end method

.method public static makeColoredSubstring(Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableString;
    .registers 8
    .param p0, "tokenizedText"    # Ljava/lang/String;
    .param p1, "subtext"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 252
    const-string/jumbo v3, "#%SUBSTRING%#"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, "start":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_27

    .line 254
    const-string/jumbo v3, "#%SUBSTRING%#"

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 255
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 256
    .local v1, "s":Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 257
    .local v0, "end":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x11

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 260
    .end local v0    # "end":I
    .end local v1    # "s":Landroid/text/SpannableString;
    :goto_26
    return-object v1

    :cond_27
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_26
.end method

.method public static makeCurrencyTextSmall(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spannable;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "priceString"    # Ljava/lang/String;

    .prologue
    .line 274
    invoke-static {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "currencySymbol":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 277
    .local v2, "start":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_28

    .line 278
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v2, v4

    .line 279
    .local v1, "end":I
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 280
    .local v3, "workingString":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v5, 0x3f4ccccd

    invoke-direct {v4, v5}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x11

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 283
    .end local v1    # "end":I
    .end local v3    # "workingString":Landroid/text/SpannableString;
    :goto_27
    return-object v3

    :cond_28
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method public static openKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 418
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 419
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 420
    return-void
.end method

.method public static prettyPrintListHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 142
    if-nez p0, :cond_6

    .line 143
    const-string/jumbo v0, ""

    .line 145
    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "<li>"

    const-string/jumbo v1, "<br> \ufffd <li>"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "</li>"

    const-string/jumbo v2, "</li><br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static putDateInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dateValue"    # Ljava/util/Date;

    .prologue
    .line 310
    if-eqz p2, :cond_9

    .line 311
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    :cond_9
    return-void
.end method

.method public static putDateInIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/util/Date;)V
    .registers 5
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dateValue"    # Ljava/util/Date;

    .prologue
    .line 299
    if-eqz p2, :cond_9

    .line 300
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 302
    :cond_9
    return-void
.end method

.method public static readParcelableIntoMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 330
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v2, :cond_1d

    .line 331
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 332
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    .line 333
    .local v3, "value":Landroid/os/Parcelable;, "TV;"
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 335
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Landroid/os/Parcelable;, "TV;"
    :cond_1d
    return-void
.end method

.method public static requestFocusAndOpenKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 413
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 414
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/MiscUtils;->openKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 415
    return-void
.end method

.method public static setGoneIf(ILandroid/view/View;Z)V
    .registers 4
    .param p0, "resId"    # I
    .param p1, "container"    # Landroid/view/View;
    .param p2, "goneIfTrue"    # Z

    .prologue
    .line 499
    invoke-static {p1, p0}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 500
    return-void
.end method

.method public static setGoneIf(Landroid/view/View;Z)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "goneIfTrue"    # Z

    .prologue
    .line 495
    if-eqz p1, :cond_8

    const/16 v0, 0x8

    :goto_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 496
    return-void

    .line 495
    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static setImageResource565(Landroid/content/res/Resources;Landroid/widget/ImageView;I)V
    .registers 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "resource"    # I

    .prologue
    .line 503
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 504
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 505
    invoke-static {p0, p2, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 506
    .local v0, "bgImageRes":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 507
    return-void
.end method

.method public static setTextAndColorSubstring(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "view"    # Landroid/widget/TextView;
    .param p1, "fulltext"    # Ljava/lang/String;
    .param p2, "subtext"    # Ljava/lang/String;
    .param p3, "color"    # I

    .prologue
    .line 231
    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 232
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 233
    .local v1, "str":Landroid/text/Spannable;
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 234
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    .line 235
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "substring not found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_1b
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/16 v4, 0x21

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 238
    return-void
.end method

.method public static setVisibleIf(Landroid/view/View;Z)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "visibleIfTrue"    # Z

    .prologue
    .line 491
    if-eqz p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 492
    return-void

    .line 491
    :cond_7
    const/16 v0, 0x8

    goto :goto_3
.end method

.method public static shouldUseAutoNaviMap(Ljava/lang/String;)Z
    .registers 3
    .param p0, "listingCountryCode"    # Ljava/lang/String;

    .prologue
    .line 478
    const-string/jumbo v0, "CN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string/jumbo v0, "CN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isCurrentIPInChina()Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static stripString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "val"    # Ljava/lang/String;

    .prologue
    .line 157
    if-nez p0, :cond_6

    .line 158
    const-string/jumbo v0, ""

    .line 160
    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\r"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static writeParcelableMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map",
            "<*+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<*+Landroid/os/Parcelable;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 323
    .local v1, "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*+Landroid/os/Parcelable;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 324
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_f

    .line 326
    .end local v1    # "key":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*+Landroid/os/Parcelable;>;"
    :cond_2d
    return-void
.end method
