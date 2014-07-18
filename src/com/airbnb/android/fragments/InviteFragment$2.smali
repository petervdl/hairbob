.class Lcom/airbnb/android/fragments/InviteFragment$2;
.super Ljava/lang/Object;
.source "InviteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 184
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment$2;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment$2;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/InviteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$2;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/adapters/ShareIntentListAdapter;->makeAppPickerDialog(Landroid/content/Context;Landroid/content/Intent;Lcom/airbnb/android/adapters/ShareIntentListAdapter$ShareIntentHandler;)V

    .line 190
    return-void
.end method
