.class public final enum Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
.super Ljava/lang/Enum;
.source "WishListsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/WishListsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WishListSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

.field public static final enum FriendsWishLists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

.field public static final enum MyWishlists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

.field private static sSections:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;


# instance fields
.field private final mNameId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    const-string/jumbo v1, "MyWishlists"

    const v2, 0x7f0e0537

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->MyWishlists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    .line 16
    new-instance v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    const-string/jumbo v1, "FriendsWishLists"

    const v2, 0x7f0e01ed

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->FriendsWishLists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    sget-object v1, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->MyWishlists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->FriendsWishLists:Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->$VALUES:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    .line 20
    invoke-static {}, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->values()[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->sSections:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "nameId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput p3, p0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->mNameId:I

    .line 27
    return-void
.end method

.method static synthetic access$000()[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->sSections:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    .prologue
    .line 14
    iget v0, p0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->mNameId:I

    return v0
.end method

.method public static getSection(I)Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 30
    if-ltz p0, :cond_c

    sget-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->sSections:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 31
    sget-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->sSections:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    aget-object v0, v0, p0

    .line 33
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->$VALUES:[Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;

    return-object v0
.end method


# virtual methods
.method public getNameResource()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/airbnb/android/adapters/WishListsPagerAdapter$WishListSection;->mNameId:I

    return v0
.end method
