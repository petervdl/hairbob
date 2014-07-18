.class public final enum Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;
.super Ljava/lang/Enum;
.source "ListingsRowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ListingsRowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DescriptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

.field public static final enum WITH_REVIEW_COUNT_AND_PRICE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

.field public static final enum WITH_ROOMS_BATHS_BEDS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

.field public static final enum WITH_ROOMTYPE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

.field public static final enum WITH_ROOMTYPE_AND_LIST_STATUS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

.field public static final enum WITH_ROOMTYPE_AND_LIST_STATUS_MINI:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    const-string/jumbo v1, "WITH_ROOMTYPE"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 34
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    const-string/jumbo v1, "WITH_ROOMTYPE_AND_LIST_STATUS"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 35
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    const-string/jumbo v1, "WITH_ROOMTYPE_AND_LIST_STATUS_MINI"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS_MINI:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 36
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    const-string/jumbo v1, "WITH_REVIEW_COUNT_AND_PRICE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_REVIEW_COUNT_AND_PRICE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 37
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    const-string/jumbo v1, "WITH_ROOMS_BATHS_BEDS"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMS_BATHS_BEDS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    sget-object v1, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS_MINI:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_REVIEW_COUNT_AND_PRICE:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMS_BATHS_BEDS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->$VALUES:[Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->$VALUES:[Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    return-object v0
.end method
