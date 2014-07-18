.class final enum Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;
.super Ljava/lang/Enum;
.source "UpdateReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/UpdateReservationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UpdateReservationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

.field public static final enum Accepted:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

.field public static final enum Cancelled:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

.field public static final enum Declined:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;


# instance fields
.field private mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    const-string/jumbo v1, "Accepted"

    const-string/jumbo v2, "accepted"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Accepted:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    .line 14
    new-instance v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    const-string/jumbo v1, "Declined"

    const-string/jumbo v2, "declined"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Declined:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    .line 15
    new-instance v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    const-string/jumbo v1, "Cancelled"

    const-string/jumbo v2, "cancelled"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Cancelled:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    sget-object v1, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Accepted:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Declined:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Cancelled:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->$VALUES:[Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "status"    # Ljava/lang/String;
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
    iput-object p3, p0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->mStatus:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->$VALUES:[Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    invoke-virtual {v0}, [Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->mStatus:Ljava/lang/String;

    return-object v0
.end method
