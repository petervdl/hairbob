.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;
.super Landroid/os/CountDownTimer;
.source "CompleteProfileBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->animateCompletion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;

.field final synthetic val$descriptionText:Ljava/lang/String;

.field final synthetic val$headerText:Ljava/lang/String;

.field final synthetic val$scrollView:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;JJLandroid/widget/ScrollView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;

    iput-object p6, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$scrollView:Landroid/widget/ScrollView;

    iput-object p7, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$headerText:Ljava/lang/String;

    iput-object p8, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$descriptionText:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$headerText:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$descriptionText:Ljava/lang/String;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->showConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;->access$000(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onTick(J)V
    .registers 8
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 44
    const-wide/16 v2, 0xa

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 45
    .local v0, "approximateNumberOfIntervalsLeft":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    div-int v1, v2, v0

    .line 46
    .local v1, "scrollByAmount":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileBaseFragment$1;->val$scrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollBy(II)V

    .line 47
    return-void
.end method
