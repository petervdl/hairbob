.class public final enum Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
.super Ljava/lang/Enum;
.source "ListYourSpaceTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListYourSpaceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

.field public static final enum CitySelection:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

.field public static final enum CreatingListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

.field public static final enum NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

.field public static final enum PropertyType:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

.field public static final enum RoomsAndBeds:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

.field public static final enum SpaceType:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    const-string/jumbo v1, "NewListing"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 9
    new-instance v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    const-string/jumbo v1, "SpaceType"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->SpaceType:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 10
    new-instance v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    const-string/jumbo v1, "PropertyType"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->PropertyType:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 11
    new-instance v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    const-string/jumbo v1, "CitySelection"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->CitySelection:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 12
    new-instance v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    const-string/jumbo v1, "RoomsAndBeds"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 13
    new-instance v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    const-string/jumbo v1, "CreatingListing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->CreatingListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->SpaceType:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->PropertyType:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->CitySelection:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->CreatingListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->$VALUES:[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getState(I)Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 16
    invoke-static {}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->values()[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v0

    .line 17
    .local v0, "values":[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 18
    :cond_9
    const/4 v1, 0x0

    .line 20
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->$VALUES:[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    return-object v0
.end method


# virtual methods
.method public getNext()Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    .registers 4

    .prologue
    .line 24
    invoke-static {}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->values()[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->values()[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrevious()Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;
    .registers 4

    .prologue
    .line 28
    invoke-static {}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->values()[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->values()[Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method
