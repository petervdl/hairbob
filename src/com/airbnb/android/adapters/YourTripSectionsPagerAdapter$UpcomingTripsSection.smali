.class public final enum Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
.super Ljava/lang/Enum;
.source "YourTripSectionsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpcomingTripsSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

.field public static final enum Previous:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

.field public static final enum Upcoming:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

.field private static sSections:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;


# instance fields
.field private final mNameId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    const-string/jumbo v1, "Upcoming"

    const v2, 0x7f0e0862

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->Upcoming:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    .line 19
    new-instance v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    const-string/jumbo v1, "Previous"

    const v2, 0x7f0e0861

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->Previous:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    sget-object v1, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->Upcoming:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->Previous:Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->$VALUES:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    .line 23
    invoke-static {}, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->values()[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->sSections:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    .line 24
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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->mNameId:I

    .line 30
    return-void
.end method

.method static synthetic access$000()[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->sSections:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    .prologue
    .line 17
    iget v0, p0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->mNameId:I

    return v0
.end method

.method public static getSection(I)Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    .registers 2
    .param p0, "index"    # I

    .prologue
    .line 33
    if-ltz p0, :cond_c

    sget-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->sSections:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    array-length v0, v0

    if-ge p0, v0, :cond_c

    .line 34
    sget-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->sSections:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    aget-object v0, v0, p0

    .line 36
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->$VALUES:[Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;

    return-object v0
.end method


# virtual methods
.method public getName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iget v0, p0, Lcom/airbnb/android/adapters/YourTripSectionsPagerAdapter$UpcomingTripsSection;->mNameId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
