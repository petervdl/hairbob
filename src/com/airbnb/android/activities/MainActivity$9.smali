.class Lcom/airbnb/android/activities/MainActivity$9;
.super Lnet/hockeyapp/android/CrashManagerListener;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity;->checkForCrashes()V
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
    .line 1003
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$9;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {p0}, Lnet/hockeyapp/android/CrashManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashesFound()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 1006
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
