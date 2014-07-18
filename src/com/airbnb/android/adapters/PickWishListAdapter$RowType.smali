.class public final enum Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;
.super Ljava/lang/Enum;
.source "PickWishListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/PickWishListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

.field public static final enum ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

.field public static final enum SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

.field public static final enum SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

.field public static final enum TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

.field public static final enum TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

.field public static final enum WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    const-string/jumbo v1, "TRANSPARENT_TOP"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 57
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    const-string/jumbo v1, "TRANSPARENT_BODY"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 58
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    const-string/jumbo v1, "SELECT_WISHLIST_TITLE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 59
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    const-string/jumbo v1, "ADD_NEW_WISHLIST"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 60
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    const-string/jumbo v1, "SECTION_HEADER"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 61
    new-instance v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    const-string/jumbo v1, "WISHLIST_ROW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    .line 55
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_TOP:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->TRANSPARENT_BODY:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SELECT_WISHLIST_TITLE:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->ADD_NEW_WISHLIST:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->SECTION_HEADER:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->WISHLIST_ROW:Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/PickWishListAdapter$RowType;

    return-object v0
.end method
