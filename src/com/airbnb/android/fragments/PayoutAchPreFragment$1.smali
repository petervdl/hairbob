.class Lcom/airbnb/android/fragments/PayoutAchPreFragment$1;
.super Ljava/lang/Object;
.source "PayoutAchPreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutAchPreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutAchPreFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutAchPreFragment;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchPreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 51
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unexpcted id, should be checking or savings"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :pswitch_10
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchPreFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutAchPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    sget-object v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->CHECKING:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    iget-object v1, v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->apiName:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutAchFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/PayoutAchFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 53
    :goto_23
    return-void

    .line 48
    :pswitch_24
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutAchPreFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutAchPreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    sget-object v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->SAVINGS:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    iget-object v1, v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->apiName:Ljava/lang/String;

    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutAchFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/PayoutAchFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_23

    .line 43
    :pswitch_data_38
    .packed-switch 0x7f080243
        :pswitch_10
        :pswitch_24
    .end packed-switch
.end method
