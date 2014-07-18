.class public final enum Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
.super Ljava/lang/Enum;
.source "ListingPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum ENABLE_LMB:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum LAST_MINUTE_BOOKINGS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum LOCATIONS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum NUMBER_OF_NIGHTS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum REFERRAL_CARD:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum VIDEO:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum WEB_LINK:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

.field public static final enum WISHLIST:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "NUMBER_OF_NIGHTS"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->NUMBER_OF_NIGHTS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 131
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "LISTING"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 132
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 133
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "WISHLIST"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WISHLIST:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 134
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "LAST_MINUTE_BOOKINGS"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LAST_MINUTE_BOOKINGS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 135
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "REFERRAL_CARD"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->REFERRAL_CARD:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 136
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "ENABLE_LMB"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ENABLE_LMB:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 137
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "LOCATIONS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOCATIONS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 138
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "VIDEO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->VIDEO:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 139
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    const-string/jumbo v1, "WEB_LINK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WEB_LINK:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    .line 129
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->NUMBER_OF_NIGHTS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WISHLIST:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LAST_MINUTE_BOOKINGS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->REFERRAL_CARD:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ENABLE_LMB:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOCATIONS:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->VIDEO:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WEB_LINK:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

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
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    const-class v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 1

    .prologue
    .line 129
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method
