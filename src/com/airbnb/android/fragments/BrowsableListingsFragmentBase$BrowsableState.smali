.class public final enum Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;
.super Ljava/lang/Enum;
.source "BrowsableListingsFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowsableState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

.field public static final enum Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

.field public static final enum FetchingCached:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

.field public static final enum NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

.field public static final enum Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    const-string/jumbo v1, "NewFetch"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 45
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    const-string/jumbo v1, "Fetching"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 46
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    const-string/jumbo v1, "FetchingCached"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->FetchingCached:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 47
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    const-string/jumbo v1, "Results"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->FetchingCached:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->$VALUES:[Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->$VALUES:[Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    return-object v0
.end method
