.class Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;
.super Ljava/lang/Object;
.source "OnlineIdFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->showRequestedPermissions(Lcom/airbnb/android/utils/SignInUtil$Service;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 215
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 219
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;->this$0:Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment$3;->val$intent:Landroid/content/Intent;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/verifiedid/OnlineIdFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    return-void
.end method
