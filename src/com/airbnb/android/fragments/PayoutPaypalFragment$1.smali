.class Lcom/airbnb/android/fragments/PayoutPaypalFragment$1;
.super Ljava/lang/Object;
.source "PayoutPaypalFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutPaypalFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutPaypalFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutPaypalFragment;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutPaypalFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalFragment$1;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutPaypalFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->newInstance(Z)Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/PayoutActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 33
    return-void
.end method
