.class Lcom/airbnb/android/fragments/InviteFragment$5;
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
    .line 210
    iput-object p1, p0, Lcom/airbnb/android/fragments/InviteFragment$5;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$5;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/InviteFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 215
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f040006

    const v3, 0x7f040008

    const v4, 0x7f040007

    const v5, 0x7f040009

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 217
    iget-object v2, p0, Lcom/airbnb/android/fragments/InviteFragment$5;->this$0:Lcom/airbnb/android/fragments/InviteFragment;

    # getter for: Lcom/airbnb/android/fragments/InviteFragment;->mSmsMessage:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/fragments/InviteFragment;->access$100(Lcom/airbnb/android/fragments/InviteFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/fragments/ContactsFragment;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/ContactsFragment;

    move-result-object v1

    .line 218
    .local v1, "next":Landroid/support/v4/app/Fragment;
    const v2, 0x7f080025

    const-class v3, Lcom/airbnb/android/fragments/ContactsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 219
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 220
    return-void
.end method
