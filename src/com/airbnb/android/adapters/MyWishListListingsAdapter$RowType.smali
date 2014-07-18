.class final enum Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;
.super Ljava/lang/Enum;
.source "MyWishListListingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/MyWishListListingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

.field public static final enum LISTING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

.field public static final enum LOADING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    const-string/jumbo v1, "LISTING"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    .line 72
    new-instance v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/MyWishListListingsAdapter$RowType;

    return-object v0
.end method
