.class Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$1;
.super Ljava/lang/Object;
.source "SignInOrCreateAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$1;->this$0:Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment$1;->this$0:Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->showAllLoginOptions(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;->access$000(Lcom/airbnb/android/fragments/SignInOrCreateAccountFragment;Z)V

    .line 76
    return-void
.end method
