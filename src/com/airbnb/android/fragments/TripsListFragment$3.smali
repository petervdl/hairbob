.class Lcom/airbnb/android/fragments/TripsListFragment$3;
.super Lcom/airbnb/android/requests/AirRequestFactory;
.source "TripsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/TripsListFragment;->setupAdapter(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirRequestFactory",
        "<",
        "Lcom/airbnb/android/requests/GuestReservationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/TripsListFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/TripsListFragment;)V
    .registers 2

    .prologue
    .line 171
    iput-object p1, p0, Lcom/airbnb/android/fragments/TripsListFragment$3;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    invoke-direct {p0}, Lcom/airbnb/android/requests/AirRequestFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/AirbnbRequest;
    .registers 4
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/airbnb/android/requests/RequestListener;

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/TripsListFragment$3;->getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/GuestReservationsRequest;

    move-result-object v0

    return-object v0
.end method

.method public getNextOffset(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/GuestReservationsRequest;
    .registers 5
    .param p1, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GuestReservationsRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/GuestReservationsRequest;"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "callback":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GuestReservationsRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/GuestReservationsRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/TripsListFragment$3;->this$0:Lcom/airbnb/android/fragments/TripsListFragment;

    # getter for: Lcom/airbnb/android/fragments/TripsListFragment;->mIsUpcoming:Z
    invoke-static {v1}, Lcom/airbnb/android/fragments/TripsListFragment;->access$000(Lcom/airbnb/android/fragments/TripsListFragment;)Z

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/airbnb/android/requests/GuestReservationsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;IZ)V

    return-object v0
.end method
