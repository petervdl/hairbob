.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 182
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mReservation:Lcom/airbnb/android/models/Reservation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackTravelDetailsSubmitDetailsClick(JLcom/airbnb/android/utils/Strap;)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mTransportationMode:Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    if-ne v0, v1, :cond_1e

    .line 189
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->startAddGeofenceRequest()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$200(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 193
    :goto_1d
    return-void

    .line 191
    :cond_1e
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->finishAndStartArrivalTracker()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$300(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    goto :goto_1d
.end method
