.class Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;
.super Ljava/lang/Object;
.source "ArrivalRatingDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 65
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "confirmation_code"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-virtual {v5}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "arrival_plan_id"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "review_rating"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mRatingStars:Landroid/widget/RatingBar;

    invoke-virtual {v5}, Landroid/widget/RatingBar;->getRating()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "review_note"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mFeedbackEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 70
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "reservation_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 71
    .local v1, "reservationId":J
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "review_rating"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mRatingStars:Landroid/widget/RatingBar;

    invoke-virtual {v5}, Landroid/widget/RatingBar;->getRating()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerSetRateExperienceReviewRating(JLcom/airbnb/android/utils/Strap;)V

    .line 72
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "review_note"

    iget-object v5, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v5, v5, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mFeedbackEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->trackArrivalTrackerSetRateExperienceReviewNote(JLcom/airbnb/android/utils/Strap;)V

    .line 74
    new-instance v3, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    new-instance v4, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;-><init>(Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;)V

    invoke-direct {v3, v0, v4}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v3}, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;->execute()V

    .line 88
    return-void
.end method
