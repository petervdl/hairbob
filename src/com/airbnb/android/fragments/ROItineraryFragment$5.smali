.class Lcom/airbnb/android/fragments/ROItineraryFragment$5;
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

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROItineraryFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 262
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    const-string/jumbo v0, "email"

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getReservationId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/ROItineraryFragment;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v3}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getThreadId()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/airbnb/android/analytics/ROAnalytics;->trackROItineraryClickContact(Ljava/lang/String;JJ)V

    .line 266
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->val$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROItineraryFragment$5;->this$0:Lcom/airbnb/android/fragments/ROItineraryFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/ROItineraryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e012e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/utils/EmailHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method
