.class public final enum Lcom/airbnb/android/utils/MixPanelHelper$MixNames;
.super Ljava/lang/Enum;
.source "MixPanelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/MixPanelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MixNames"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/utils/MixPanelHelper$MixNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

.field public static final enum DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

.field public static final enum HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

.field public static final enum WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;


# instance fields
.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    const-string/jumbo v1, "HostOnboarding"

    const-string/jumbo v2, "host_onboarding"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    .line 14
    new-instance v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    const-string/jumbo v1, "WishLists"

    const-string/jumbo v2, "Wish_Lists"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    .line 15
    new-instance v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    const-string/jumbo v1, "DeepLinking"

    const-string/jumbo v2, "deep_linking"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->$VALUES:[Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/utils/MixPanelHelper$MixNames;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/utils/MixPanelHelper$MixNames;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->$VALUES:[Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    invoke-virtual {v0}, [Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    return-object v0
.end method
