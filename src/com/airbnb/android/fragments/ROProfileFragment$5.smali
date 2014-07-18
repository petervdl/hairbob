.class Lcom/airbnb/android/fragments/ROProfileFragment$5;
.super Ljava/lang/Object;
.source "ROProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROProfileFragment;->updateInfoAndAbout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROProfileFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROProfileFragment;)V
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    const v2, 0x7f0e002e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/airbnb/android/fragments/ROProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v5}, Lcom/airbnb/android/fragments/ROProfileFragment;->access$100(Lcom/airbnb/android/fragments/ROProfileFragment;)Lcom/airbnb/android/models/User;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/fragments/ROProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    # getter for: Lcom/airbnb/android/fragments/ROProfileFragment;->mUser:Lcom/airbnb/android/models/User;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ROProfileFragment;->access$100(Lcom/airbnb/android/fragments/ROProfileFragment;)Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROProfileFragment$5;->this$0:Lcom/airbnb/android/fragments/ROProfileFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ROProfileFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 321
    return-void
.end method
