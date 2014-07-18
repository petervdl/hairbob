.class Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment$1;
.super Ljava/lang/Object;
.source "AccountVerificationWelcomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;)V
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 35
    iget-object v1, p0, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment$1;->this$0:Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AccountVerificationWelcomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AccountVerificationActivity;

    .line 36
    .local v0, "activity":Lcom/airbnb/android/activities/AccountVerificationActivity;
    invoke-virtual {v0}, Lcom/airbnb/android/activities/AccountVerificationActivity;->onBeginClick()V

    .line 37
    return-void
.end method
