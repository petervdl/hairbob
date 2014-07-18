.class public final enum Lcom/airbnb/android/enums/CustomShareActivities;
.super Ljava/lang/Enum;
.source "CustomShareActivities.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/enums/CustomShareActivities;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum FACEBOOK:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum FB_MESSGENGER:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum GMAIL:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum GOOGLE_HANGOUTS:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum KAKAOGROUP:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum KAKAOTALK:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum LINE:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum TWITTER:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum WECHAT:Lcom/airbnb/android/enums/CustomShareActivities;

.field public static final enum WHATSAPP:Lcom/airbnb/android/enums/CustomShareActivities;

.field private static sAll:[Lcom/airbnb/android/enums/CustomShareActivities;


# instance fields
.field public final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "FACEBOOK"

    const-string/jumbo v2, "com.facebook.katana"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->FACEBOOK:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 20
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "FB_MESSGENGER"

    const-string/jumbo v2, "com.facebook.orca"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->FB_MESSGENGER:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 21
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "WHATSAPP"

    const-string/jumbo v2, "com.whatsapp"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->WHATSAPP:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 22
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "WECHAT"

    const-string/jumbo v2, "com.tencent.mm"

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->WECHAT:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 23
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "KAKAOTALK"

    const-string/jumbo v2, "com.kakao.talk"

    invoke-direct {v0, v1, v8, v2}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->KAKAOTALK:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 24
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "KAKAOGROUP"

    const/4 v2, 0x5

    const-string/jumbo v3, "com.kakao.group"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->KAKAOGROUP:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 25
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "LINE"

    const/4 v2, 0x6

    const-string/jumbo v3, "jp.naver.line.android"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->LINE:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 26
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "TWITTER"

    const/4 v2, 0x7

    const-string/jumbo v3, "com.twitter.android"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->TWITTER:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 27
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "GMAIL"

    const/16 v2, 0x8

    const-string/jumbo v3, "com.google.android.gm"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->GMAIL:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 28
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "GOOGLE_HANGOUTS"

    const/16 v2, 0x9

    const-string/jumbo v3, "com.google.android.talk"

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->GOOGLE_HANGOUTS:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 29
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities;

    const-string/jumbo v1, "OTHER"

    const/16 v2, 0xa

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/enums/CustomShareActivities;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    .line 18
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/airbnb/android/enums/CustomShareActivities;

    sget-object v1, Lcom/airbnb/android/enums/CustomShareActivities;->FACEBOOK:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/enums/CustomShareActivities;->FB_MESSGENGER:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/enums/CustomShareActivities;->WHATSAPP:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/enums/CustomShareActivities;->WECHAT:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v1, v0, v7

    sget-object v1, Lcom/airbnb/android/enums/CustomShareActivities;->KAKAOTALK:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/enums/CustomShareActivities;->KAKAOGROUP:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/enums/CustomShareActivities;->LINE:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/enums/CustomShareActivities;->TWITTER:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/enums/CustomShareActivities;->GMAIL:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/enums/CustomShareActivities;->GOOGLE_HANGOUTS:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->$VALUES:[Lcom/airbnb/android/enums/CustomShareActivities;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/airbnb/android/enums/CustomShareActivities;->packageName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static getComparator(Landroid/content/Context;)Ljava/util/Comparator;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/airbnb/android/enums/CustomShareActivities$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/enums/CustomShareActivities$1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getEnum(Ljava/lang/String;)Lcom/airbnb/android/enums/CustomShareActivities;
    .registers 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->sAll:[Lcom/airbnb/android/enums/CustomShareActivities;

    if-nez v4, :cond_a

    .line 41
    invoke-static {}, Lcom/airbnb/android/enums/CustomShareActivities;->values()[Lcom/airbnb/android/enums/CustomShareActivities;

    move-result-object v4

    sput-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->sAll:[Lcom/airbnb/android/enums/CustomShareActivities;

    .line 44
    :cond_a
    sget-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->sAll:[Lcom/airbnb/android/enums/CustomShareActivities;

    .local v0, "arr$":[Lcom/airbnb/android/enums/CustomShareActivities;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v3, :cond_1e

    aget-object v1, v0, v2

    .line 45
    .local v1, "csa":Lcom/airbnb/android/enums/CustomShareActivities;
    iget-object v4, v1, Lcom/airbnb/android/enums/CustomShareActivities;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 49
    .end local v1    # "csa":Lcom/airbnb/android/enums/CustomShareActivities;
    :goto_1a
    return-object v1

    .line 44
    .restart local v1    # "csa":Lcom/airbnb/android/enums/CustomShareActivities;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 49
    .end local v1    # "csa":Lcom/airbnb/android/enums/CustomShareActivities;
    :cond_1e
    sget-object v1, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    goto :goto_1a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/enums/CustomShareActivities;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/enums/CustomShareActivities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/enums/CustomShareActivities;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/enums/CustomShareActivities;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/airbnb/android/enums/CustomShareActivities;->$VALUES:[Lcom/airbnb/android/enums/CustomShareActivities;

    invoke-virtual {v0}, [Lcom/airbnb/android/enums/CustomShareActivities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/enums/CustomShareActivities;

    return-object v0
.end method
