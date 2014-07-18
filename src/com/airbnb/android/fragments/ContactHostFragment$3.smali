.class Lcom/airbnb/android/fragments/ContactHostFragment$3;
.super Ljava/lang/Object;
.source "ContactHostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ContactHostFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ContactHostFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ContactHostFragment;)V
    .registers 2

    .prologue
    .line 196
    iput-object p1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ContactHostFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # getter for: Lcom/airbnb/android/fragments/ContactHostFragment;->mMessageSection:Landroid/view/View;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$300(Lcom/airbnb/android/fragments/ContactHostFragment;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->requestFocusAndOpenKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/ContactHostFragment$3;->this$0:Lcom/airbnb/android/fragments/ContactHostFragment;

    # invokes: Lcom/airbnb/android/fragments/ContactHostFragment;->scrollToBottom()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ContactHostFragment;->access$400(Lcom/airbnb/android/fragments/ContactHostFragment;)V

    .line 202
    return-void
.end method
