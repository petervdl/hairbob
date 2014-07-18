.class public final enum Lcom/airbnb/android/utils/TabHelper$TabStyle;
.super Ljava/lang/Enum;
.source "TabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/TabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/utils/TabHelper$TabStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/utils/TabHelper$TabStyle;

.field public static final enum Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

.field public static final enum Light:Lcom/airbnb/android/utils/TabHelper$TabStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;

    const-string/jumbo v1, "Light"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/TabHelper$TabStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Light:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    .line 18
    new-instance v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;

    const-string/jumbo v1, "Dark"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/utils/TabHelper$TabStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/utils/TabHelper$TabStyle;

    sget-object v1, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Light:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;->$VALUES:[Lcom/airbnb/android/utils/TabHelper$TabStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/utils/TabHelper$TabStyle;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/utils/TabHelper$TabStyle;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/airbnb/android/utils/TabHelper$TabStyle;->$VALUES:[Lcom/airbnb/android/utils/TabHelper$TabStyle;

    invoke-virtual {v0}, [Lcom/airbnb/android/utils/TabHelper$TabStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/utils/TabHelper$TabStyle;

    return-object v0
.end method
