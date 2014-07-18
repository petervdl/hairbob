.class Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$4;
.super Ljava/lang/Object;
.source "OnlineIdChildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$4;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment$4;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdChildFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->clickGoogleButton()V

    .line 70
    return-void
.end method
