.class public final enum Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;
.super Ljava/lang/Enum;
.source "WishListsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/WishListsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WishListsRowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

.field public static final enum FOOTER:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

.field public static final enum LISTING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

.field public static final enum LOADING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    const-string/jumbo v1, "LISTING"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LISTING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    .line 35
    new-instance v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LOADING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    .line 36
    new-instance v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    const-string/jumbo v1, "FOOTER"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->FOOTER:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LISTING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->LOADING:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->FOOTER:Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->$VALUES:[Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->$VALUES:[Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/WishListsAdapter$WishListsRowType;

    return-object v0
.end method
