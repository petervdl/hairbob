.class Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;
.super Ljava/lang/Object;
.source "ArrivalRatingDialogFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->onClick(Landroid/view/View;)V
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
        "Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x3f3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x3f3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;->this$1:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 79
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$2$1;->onResponse(Lcom/airbnb/android/requests/UpdateTravelSummaryRequest;)V

    return-void
.end method
