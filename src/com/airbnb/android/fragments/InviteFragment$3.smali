.class Lcom/airbnb/android/fragments/InviteFragment$3;
.super Ljava/lang/Object;
.source "InviteFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/InviteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/InviteFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/InviteFragment;)V
    .registers 2

    .prologue
    .line 193
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment$3;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment$3;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/InviteFragment$3;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    return v0
.end method
