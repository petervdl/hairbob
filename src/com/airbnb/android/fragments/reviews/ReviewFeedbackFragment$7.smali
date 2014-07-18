.class Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$7;
.super Ljava/lang/Object;
.source "ReviewFeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 372
    iput-object p1, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$7;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment$7;->this$0:Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;

    # invokes: Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->showTooltip()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;->access$900(Lcom/airbnb/android/fragments/reviews/ReviewFeedbackFragment;)V

    .line 376
    return-void
.end method
