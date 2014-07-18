.class Lcom/airbnb/android/activities/LocalCompanionActivity$1;
.super Ljava/lang/Object;
.source "LocalCompanionActivity.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/LocalCompanionActivity;->fetchReservation(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/LocalCompanionActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/LocalCompanionActivity;)V
    .registers 2

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/activities/LocalCompanionActivity$1;->this$0:Lcom/airbnb/android/activities/LocalCompanionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/android/activities/LocalCompanionActivity$1;->this$0:Lcom/airbnb/android/activities/LocalCompanionActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/LocalCompanionActivity;->finish()V

    .line 119
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ReservationRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/ReservationRequest;

    .prologue
    .line 109
    iget-object v1, p0, Lcom/airbnb/android/activities/LocalCompanionActivity$1;->this$0:Lcom/airbnb/android/activities/LocalCompanionActivity;

    iget-object v2, p1, Lcom/airbnb/android/requests/ReservationRequest;->reservation:Lcom/airbnb/android/models/ReservationV2;

    invoke-virtual {v2}, Lcom/airbnb/android/models/ReservationV2;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/airbnb/android/activities/LocalCompanionActivity;->mMarket:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/airbnb/android/activities/LocalCompanionActivity;->access$002(Lcom/airbnb/android/activities/LocalCompanionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->newInstance()Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    move-result-object v0

    .line 112
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;
    iget-object v1, p0, Lcom/airbnb/android/activities/LocalCompanionActivity$1;->this$0:Lcom/airbnb/android/activities/LocalCompanionActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/activities/LocalCompanionActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 113
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 106
    check-cast p1, Lcom/airbnb/android/requests/ReservationRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/LocalCompanionActivity$1;->onResponse(Lcom/airbnb/android/requests/ReservationRequest;)V

    return-void
.end method
