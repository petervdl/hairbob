.class Lcom/airbnb/android/fragments/SlidingMenuFragment$5;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 168
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$5;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->sCrashLog:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 173
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->sCrashLog:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/android/fragments/CrashDialog;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/fragments/CrashDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$5;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/CrashDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x1

    .line 176
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
