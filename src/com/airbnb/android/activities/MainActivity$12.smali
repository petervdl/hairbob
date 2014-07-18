.class Lcom/airbnb/android/activities/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->createUpdateDialog(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 2

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$12;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 1526
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "App_Open"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "view_upgrade_dialog"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "click_upgrade"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1527
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1528
    .local v0, "i":Landroid/content/Intent;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAppStoreLink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1529
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$12;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1530
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$12;->this$0:Lcom/airbnb/android/activities/MainActivity;

    const/4 v2, 0x0

    # setter for: Lcom/airbnb/android/activities/MainActivity;->mUpgradeDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/airbnb/android/activities/MainActivity;->access$1002(Lcom/airbnb/android/activities/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1531
    return-void
.end method
