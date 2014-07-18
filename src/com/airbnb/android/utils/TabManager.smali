.class public Lcom/airbnb/android/utils/TabManager;
.super Ljava/lang/Object;
.source "TabManager.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/TabManager$DummyTabFactory;,
        Lcom/airbnb/android/utils/TabManager$TabInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field activity:Landroid/support/v4/app/FragmentActivity;

.field containerId:I

.field lastTab:Lcom/airbnb/android/utils/TabManager$TabInfo;

.field final tabHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/TabManager$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field tabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/airbnb/android/utils/TabManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/TabManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/widget/TabHost;I)V
    .registers 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "tabHost"    # Landroid/widget/TabHost;
    .param p3, "containerId"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/TabManager;->tabHash:Ljava/util/HashMap;

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/utils/TabManager;->activity:Landroid/support/v4/app/FragmentActivity;

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/utils/TabManager;->tabHost:Landroid/widget/TabHost;

    .line 25
    iput p3, p0, Lcom/airbnb/android/utils/TabManager;->containerId:I

    .line 26
    invoke-virtual {p2, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TabHost$TabSpec;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lcom/airbnb/android/utils/TabManager$DummyTabFactory;

    iget-object v3, p0, Lcom/airbnb/android/utils/TabManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v2, v3}, Lcom/airbnb/android/utils/TabManager$DummyTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 31
    invoke-virtual {p1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, "tag":Ljava/lang/String;
    new-instance v0, Lcom/airbnb/android/utils/TabManager$TabInfo;

    invoke-direct {v0, v1, p2, p3}, Lcom/airbnb/android/utils/TabManager$TabInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 34
    .local v0, "info":Lcom/airbnb/android/utils/TabManager$TabInfo;
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, v0, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 35
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->tabHash:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, p1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 37
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    .line 41
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->tabHash:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/utils/TabManager$TabInfo;

    .line 42
    .local v1, "newTab":Lcom/airbnb/android/utils/TabManager$TabInfo;
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->lastTab:Lcom/airbnb/android/utils/TabManager$TabInfo;

    if-eq v2, v1, :cond_54

    .line 43
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 44
    .local v0, "ft":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->lastTab:Lcom/airbnb/android/utils/TabManager$TabInfo;

    if-eqz v2, :cond_27

    .line 45
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->lastTab:Lcom/airbnb/android/utils/TabManager$TabInfo;

    iget-object v2, v2, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_27

    .line 46
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->lastTab:Lcom/airbnb/android/utils/TabManager$TabInfo;

    iget-object v2, v2, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 49
    :cond_27
    if-eqz v1, :cond_46

    .line 50
    iget-object v2, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    if-nez v2, :cond_55

    .line 51
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->args:Landroid/os/Bundle;

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    iput-object v2, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 52
    iget v2, p0, Lcom/airbnb/android/utils/TabManager;->containerId:I

    iget-object v3, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v4, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->tag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 58
    :cond_46
    :goto_46
    iput-object v1, p0, Lcom/airbnb/android/utils/TabManager;->lastTab:Lcom/airbnb/android/utils/TabManager$TabInfo;

    .line 59
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 60
    iget-object v2, p0, Lcom/airbnb/android/utils/TabManager;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 62
    .end local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_54
    return-void

    .line 55
    .restart local v0    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_55
    iget-object v2, v1, Lcom/airbnb/android/utils/TabManager$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentTransaction;->attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_46
.end method
