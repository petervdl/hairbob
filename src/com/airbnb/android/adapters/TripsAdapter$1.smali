.class Lcom/airbnb/android/adapters/TripsAdapter$1;
.super Lcom/airbnb/android/utils/EasyCache;
.source "TripsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/TripsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/utils/EasyCache",
        "<",
        "Lcom/airbnb/android/models/Reservation;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/TripsAdapter;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/TripsAdapter;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/adapters/TripsAdapter$1;->this$0:Lcom/airbnb/android/adapters/TripsAdapter;

    invoke-direct {p0}, Lcom/airbnb/android/utils/EasyCache;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Lcom/airbnb/android/models/Reservation;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/TripsAdapter$1;->transform(Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;
    .registers 3
    .param p1, "reservation"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 41
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    # invokes: Lcom/airbnb/android/adapters/TripsAdapter;->getInfoString(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/airbnb/android/adapters/TripsAdapter;->access$000(Landroid/content/Context;Lcom/airbnb/android/models/Reservation;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
