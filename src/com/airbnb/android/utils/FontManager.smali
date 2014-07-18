.class public Lcom/airbnb/android/utils/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/FontManager$Font;
    }
.end annotation


# static fields
.field private static sFontMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/FontManager;->sFontMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getTypeface(Lcom/airbnb/android/utils/FontManager$Font;Landroid/content/Context;)Landroid/graphics/Typeface;
    .registers 5
    .param p0, "font"    # Lcom/airbnb/android/utils/FontManager$Font;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    .line 51
    :cond_3
    :goto_3
    return-object v0

    .line 46
    :cond_4
    sget-object v1, Lcom/airbnb/android/utils/FontManager;->sFontMap:Ljava/util/HashMap;

    # getter for: Lcom/airbnb/android/utils/FontManager$Font;->mFilename:Ljava/lang/String;
    invoke-static {p0}, Lcom/airbnb/android/utils/FontManager$Font;->access$000(Lcom/airbnb/android/utils/FontManager$Font;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 47
    .local v0, "tf":Landroid/graphics/Typeface;
    if-nez v0, :cond_3

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    # getter for: Lcom/airbnb/android/utils/FontManager$Font;->mFilename:Ljava/lang/String;
    invoke-static {p0}, Lcom/airbnb/android/utils/FontManager$Font;->access$000(Lcom/airbnb/android/utils/FontManager$Font;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/airbnb/android/utils/FontManager;->sFontMap:Ljava/util/HashMap;

    # getter for: Lcom/airbnb/android/utils/FontManager$Font;->mFilename:Ljava/lang/String;
    invoke-static {p0}, Lcom/airbnb/android/utils/FontManager$Font;->access$000(Lcom/airbnb/android/utils/FontManager$Font;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public static wrapSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 61
    .end local p0    # "s":Ljava/lang/CharSequence;
    :goto_6
    return-object p0

    .line 58
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_7
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    .local v0, "spannable":Landroid/text/SpannableString;
    new-instance v1, Lcom/airbnb/android/utils/CustomFontSpan;

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    const-string/jumbo v3, "circular_book.otf"

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/utils/CustomFontSpan;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    .line 61
    goto :goto_6
.end method
