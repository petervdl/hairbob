.class public final enum Lcom/airbnb/android/utils/FontManager$Font;
.super Ljava/lang/Enum;
.source "FontManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/FontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/utils/FontManager$Font;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/utils/FontManager$Font;

.field public static final enum AirGlyphs:Lcom/airbnb/android/utils/FontManager$Font;

.field public static final enum CircularBold:Lcom/airbnb/android/utils/FontManager$Font;

.field public static final enum CircularBook:Lcom/airbnb/android/utils/FontManager$Font;

.field public static final enum Default:Lcom/airbnb/android/utils/FontManager$Font;


# instance fields
.field private mFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/airbnb/android/utils/FontManager$Font;

    const-string/jumbo v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/utils/FontManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/FontManager$Font;->Default:Lcom/airbnb/android/utils/FontManager$Font;

    .line 19
    new-instance v0, Lcom/airbnb/android/utils/FontManager$Font;

    const-string/jumbo v1, "AirGlyphs"

    const-string/jumbo v2, "airglyphs.ttf"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/utils/FontManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/FontManager$Font;->AirGlyphs:Lcom/airbnb/android/utils/FontManager$Font;

    .line 20
    new-instance v0, Lcom/airbnb/android/utils/FontManager$Font;

    const-string/jumbo v1, "CircularBook"

    const-string/jumbo v2, "circular_book.otf"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/utils/FontManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/FontManager$Font;->CircularBook:Lcom/airbnb/android/utils/FontManager$Font;

    .line 21
    new-instance v0, Lcom/airbnb/android/utils/FontManager$Font;

    const-string/jumbo v1, "CircularBold"

    const-string/jumbo v2, "circular_bold.otf"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/utils/FontManager$Font;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/FontManager$Font;->CircularBold:Lcom/airbnb/android/utils/FontManager$Font;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/utils/FontManager$Font;

    sget-object v1, Lcom/airbnb/android/utils/FontManager$Font;->Default:Lcom/airbnb/android/utils/FontManager$Font;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/utils/FontManager$Font;->AirGlyphs:Lcom/airbnb/android/utils/FontManager$Font;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/utils/FontManager$Font;->CircularBook:Lcom/airbnb/android/utils/FontManager$Font;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/utils/FontManager$Font;->CircularBold:Lcom/airbnb/android/utils/FontManager$Font;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/utils/FontManager$Font;->$VALUES:[Lcom/airbnb/android/utils/FontManager$Font;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/airbnb/android/utils/FontManager$Font;->mFilename:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/FontManager$Font;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/FontManager$Font;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/android/utils/FontManager$Font;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method public static getFont(I)Lcom/airbnb/android/utils/FontManager$Font;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 30
    invoke-static {}, Lcom/airbnb/android/utils/FontManager$Font;->values()[Lcom/airbnb/android/utils/FontManager$Font;

    move-result-object v0

    .line 31
    .local v0, "values":[Lcom/airbnb/android/utils/FontManager$Font;
    if-ltz p0, :cond_c

    array-length v1, v0

    if-ge p0, v1, :cond_c

    .line 32
    aget-object v1, v0, p0

    .line 35
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/utils/FontManager$Font;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/android/utils/FontManager$Font;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/FontManager$Font;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/utils/FontManager$Font;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/android/utils/FontManager$Font;->$VALUES:[Lcom/airbnb/android/utils/FontManager$Font;

    invoke-virtual {v0}, [Lcom/airbnb/android/utils/FontManager$Font;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/utils/FontManager$Font;

    return-object v0
.end method
