.class Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$1;
.super Ljava/lang/Object;
.source "ArrivalRatingDialogFragment.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


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
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .registers 6
    .param p1, "ratingBar"    # Landroid/widget/RatingBar;
    .param p2, "rating"    # F
    .param p3, "fromUser"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ArrivalRatingDialogFragment;->mSubmitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 55
    return-void
.end method
