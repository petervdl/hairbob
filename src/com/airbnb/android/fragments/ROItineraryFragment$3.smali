.class Lcom/airbnb/android/fragments/ROItineraryFragment$3;
.super Ljava/lang/Object;
.source "ROItineraryFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROItineraryFragment;->setupReservation(Lcom/airbnb/android/models/Reservation;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 229
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$3;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$3;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    const-string/jumbo v0, "call"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$3;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservationId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$3;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v3}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getThreadId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROItineraryClickContact(Ljava/lang/String;JJ)V

    .line 233
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$3;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$3;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/CallHelper;->dial(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    return-void
.end method
