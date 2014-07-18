.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$6;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->initializeViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V
    .registers 2

    .prologue
    .line 341
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$6;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$6;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # getter for: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->mWordsLeft:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$800(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz p2, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    return-void

    .line 344
    :cond_d
    const/16 v0, 0x8

    goto :goto_9
.end method
