from playwright.sync_api import Page, expect
from project_assets import awetest

def test_example(page: Page) -> None:
    url = awetest.get_env_url()
    page.goto(url)
    page.get_by_role("link", name="About").first.click()
    page.get_by_role("link", name="Product1").first.click()
    expect(page.get_by_text("Build + Manage + Execute")).to_be_visible()
    page.get_by_role("link", name="Resources").click()
    expect(page.get_by_role("heading", name="TUTORIALS")).to_be_visible()

def test_example_1(page: Page) -> None:
    url = awetest.get_env_url()
    page.goto(url)
    page.get_by_role("link", name="About").first.click()
    page.get_by_role("link", name="Product").first.click()
    expect(page.get_by_text("Build + Manage + Execute")).to_be_visible()
    page.get_by_role("link", name="Resources").click()
    expect(page.get_by_role("heading", name="TUTORIALS")).to_be_visible()

def test_example_2(page: Page) -> None:
    url = awetest.get_env_url()
    page.goto(url)
    page.get_by_role("link", name="About2").first.click()
    page.get_by_role("link", name="Product").first.click()
    expect(page.get_by_text("Build + Manage + Execute")).to_be_visible()
    page.get_by_role("link", name="Resources").click()
    expect(page.get_by_role("heading", name="TUTORIALS")).to_be_visible()


def test_example_3(page: Page) -> None:
    url = awetest.get_env_url()
    page.goto(url)
    page.get_by_role("link", name="About").first.click()
    page.get_by_role("link", name="Product").first.click()
    expect(page.get_by_text("Test Your Stack")).to_be_visible()


def test_example_4(page: Page) -> None:
    url = awetest.get_env_url()
    page.goto(url)
    page.get_by_role("link", name="About").first.click()
    page.get_by_role("link", name="Product").first.click()
    expect(page.get_by_text("Build + Manage + Execute")).to_be_visible()
    page.get_by_role("link", name="Resources").click()
    expect(page.get_by_role("heading", name="TUTORIALS")).to_be_visible()

def test_example_5(page: Page) -> None:
    url = awetest.get_env_url()
    page.goto(url)
    page.get_by_role("link", name="About").first.click()
    page.get_by_role("link", name="Product").first.click()
    expect(page.get_by_text("Build + Manage + Execute")).to_be_visible()
    page.get_by_role("link", name="Resources").click()
    expect(page.get_by_role("heading", name="TUTORIALS3")).to_be_visible()
